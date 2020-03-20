*** Settings ***

Library  SeleniumLibrary
Library  Collections
Resource   ../Resources/CommonWeb.robot
Resource  ../Resources/AmazonApp.robot

Test Setup   CommonWeb.Do Setup
Test Teardown  CommonWeb.Do Teardown
Documentation  Learn how to write a Robot Frameworks Script.  Documentation in settings starts at first column





*** Variables ***
${url} =  http://www.amazon.com
${browser} =  chrome
${elements}    css=div.sb_2sPLTAOF
${Product} =  Glue gun

*** Test Cases ***

Logged Out User Can Search For Products
  [Documentation]  A user that is logged out should be able to search for products
  [Tags]  Smoke  Products
  AmazonApp.Search For Product  ${Product}
  
  
Logged Out User Can Add Product To a Cart
  [Documentation]  A logged out user should be able to add a product to a cart
  [Tags]   Cart
  AmazonApp.Search For Product  ${Product}
  AmazonApp.Select Product From Search Results
  AmazonApp.Add Product to Cart
  ${numProducts} =  AmazonApp.Get Count Products in Cart
  Log  Num Products in cart are ${numProducts}
  Should Be Equal As Integers  ${numProducts}  1


Logged Out User Can View A Product
  [Documentation]  A logged out user should be able to view a product
  [Tags]  View
  AmazonApp.Search For Product  ${Product}
  AmazonApp.Select Product From Search Results


Feature 1
  Log   Feature 1 Test


Non smoke Test
  [Documentation]  Non smoke text
  [Tags]  NotSmoke

  Log  This is a non smoke test

