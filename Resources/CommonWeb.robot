*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${BROWSER}  edge

*** Keywords ***

Do Setup

  Open Browser  about:blank  ${BROWSER}


Do Teardown
   Close Browser

