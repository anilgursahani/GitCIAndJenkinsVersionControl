*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${AddToOrderLocator} =  id:huc-v2-order-row-messages
${CartNumItems} =  id:nav-cart-count

*** Keywords ***
Verify Product Added
   # Wait Until Page Contains  subtotal
   Wait Until Page Contains Element  ${AddToOrderLocator}
   ${AddToOrderButton} =  Get Web Element  ${AddToOrderLocator}
   ${theText} =  Get Text  ${AddToOrderButton}
   Should Contain  ${theText}  Added to Cart


Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains  Some Text To Verify

Get Count Products
  ${element} =  Get Web Element  ${CartNumItems}
  ${numItemsText} =  Get Text  ${element}
  ${numItems} =  Convert To Integer  ${numItemsText}
  [Return]  ${numItems}

