# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/clientdelay

*** Keywords ***
Steps

    Click Button    id=ajaxButton
    Wait Until Element Contains    id=content    Data calculated on the client side.    20s
    Click Element    id=content