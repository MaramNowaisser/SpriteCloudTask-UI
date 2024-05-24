# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/classattr

*** Keywords ***
Steps
       Click Element    xpath=//button[contains(concat(' ', normalize-space(@class), ' '), ' btn-primary ')]
       Handle Alert    ACCEPT