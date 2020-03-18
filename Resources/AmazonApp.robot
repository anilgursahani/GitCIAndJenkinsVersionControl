*** Settings ***

Resource  PO/LandingPage.robot
Resource  PO/TopNav.robot
Resource  PO/SearchResults.robot
Resource  PO/Product.robot


*** Variables ***

${AmazonURL} =  http://www.amazon.com

*** Keywords ***

Go To Amazon Page
  Log  Go to Amazon page
  LandingPage.Load  ${AmazonURL}
  LandingPage.Verify Page Loaded

Search For Product
  [Arguments]  ${SEARCH_TERM}
  Go To Amazon Page
  TopNav.Search For Product  ${SEARCH_TERM}
  SearchResults.Verify Search Completed  ${SEARCH_TERM}

Select Product From Search Results
  SearchResults.Select Product From Search Results
  Product.Verify Add To Cart Button Appears

Code to IntegrateLater on
  ${elements}    css=div.sb_2sPLTAOF
  ${items} =  Get Element Count  ${elements}
  Log  ${items}
  ${webElements} =  Get Web Elements  ${elements}
  ${webElement} =  Get From List  ${webElements}  0
  Click Element  ${webElement}
  Wait Until Page Contains  Back to results
  Sleep  5s



