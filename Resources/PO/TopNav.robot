*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***

${searchButton} =  css:input[type='submit'].nav-input
${searchTextBox} =  id:twotabsearchtextbox
*** Keywords ***
Search for Product
    [Arguments]  ${SEARCH_TERM}
    Enter Search Term  ${SEARCH_TERM}
    Submit Search

Enter Search Term
    [Arguments]  ${SEARCH_TERM}
    Input Text  ${searchTextBox}  ${SEARCH_TERM}

Submit Search
   # Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
   Click Button  ${searchButton}