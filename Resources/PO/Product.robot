*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${AddToCartButton} =  id:add-to-cart-button

*** Keywords ***

Wait For Cart Button to Appear

  Wait Until Page Contains Element  ${AddToCartButton}   timeout=10 seconds

Add Product to Cart
  Wait For Cart Button to Appear
  Click Button  ${AddToCartButton}


