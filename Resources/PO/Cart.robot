*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  subtotal

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains  Some Text To Verify