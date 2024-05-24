*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    http://www.uitestingplayground.com
${DELAY_PAGE_URL}    ${BASE_URL}/loaddelay

*** Keywords ***
Steps
    Go To Home Page
    Click Load Delays Link
    Wait For Page To Load And Click Button


Go To Home Page
    [Documentation]    Navigates to the Home page.
    Go To    ${BASE_URL}

Click Load Delays Link
    [Documentation]    Clicks on the Load Delays link.
    Click Link    Load Delay

Wait For Page To Load And Click Button
    [Documentation]    Waits for the page to load and clicks the button.
    Wait Until Element Is Visible    css:button.btn.btn-primary    timeout=20 seconds
    Click Button    css:button.btn.btn-primary