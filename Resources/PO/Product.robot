*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${AddToCartButton} =  id:add-to-cart-button

*** Keywords ***

Verify Add To Cart Button Appears

  Wait Until Page Contains Element  ${AddToCartButton}   timeout=10 seconds