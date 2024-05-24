# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/scrollbars

*** Keywords ***
Steps
    Scroll Element Into View    css=#hidingButton
    Sleep    5s
    Click Element    css=#hidingButton
    Element Should Be Visible    css=#hidingButton
