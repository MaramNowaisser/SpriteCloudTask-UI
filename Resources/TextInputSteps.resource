*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/textinput
${INPUT_TEXT}    Maram Nowaisser

*** Keywords ***
Steps
    Input Text    id=newButtonName    ${INPUT_TEXT}
    Click Button    id=updatingButton
    Wait Until Button Text Is    ${INPUT_TEXT}

Wait Until Button Text Is
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    10s    1s    Button Text Should Be    ${expected_text}

Button Text Should Be
    [Arguments]    ${expected_text}
    ${actual_text}=    Get Text    id=updatingButton
    Should Be Equal    ${actual_text}    ${expected_text}
