*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    [Arguments]  ${START_URL}
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Sell