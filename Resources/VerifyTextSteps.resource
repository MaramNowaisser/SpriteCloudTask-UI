# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      http://www.uitestingplayground.com/verifytext
${WELCOME_TEXT}  Welcome...

*** Keywords ***
Steps

    Wait Until Page Contains Element    xpath=//span[normalize-space(text())='${WELCOME_TEXT}']    10s
    Element Should Contain    xpath=//span[normalize-space(text())='${WELCOME_TEXT}']    ${WELCOME_TEXT}
