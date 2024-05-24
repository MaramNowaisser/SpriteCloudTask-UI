# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/dynamicid

*** Keywords ***
    # Click the button using a class attribute to avoid dynamic ID
 Steps
    Click Element    //button[contains(@class, 'btn-primary')]
    Sleep    2s    # Wait for 2 seconds to observe the click

