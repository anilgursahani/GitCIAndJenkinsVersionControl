*** Settings ***

*** Variables ***

${BROWSER} =  Opera

*** Test Cases ***

Test Correct Browser selected
  Log  Browser selected is  ${BROWSER}

