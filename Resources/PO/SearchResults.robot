*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${ProductsSelectedSelector} =   css:div.sb_2sPLTAOF
*** Keywords ***
Verify Search Completed
   [Arguments]  ${SEARCH_TERM}

    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page

Select Product from Search Results
  ${webElements} =  Get Web Elements  ${ProductsSelectedSelector}
  Log Many  ${webElements}
  ${webElement} =  Get From List  ${webElements}  0
  Click Element  ${webElement}