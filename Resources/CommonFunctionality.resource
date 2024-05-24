# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
*** Keywords ***
Start TestCase
     Open Browser    ${URL}    ${BROWSER}
     Maximize Browser Window


Finish TestCase
    Close Browser