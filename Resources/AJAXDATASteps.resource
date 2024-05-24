# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.uitestingplayground.com/ajax
*** Keywords ***
Steps
    Click Button    id=ajaxButton
    Wait Until Element Is Visible    xpath=//div[@id='content']    20s
    Wait Until Element Has Non Zero Size    xpath=//div[@id='content']    1 min
    Click Element    id=content

Element Should Be Visible And Enabled
    [Arguments]    ${locator}
    Element Should Be Visible    ${locator}

Wait Until Element Has Non Zero Size
    [Arguments]    ${locator}    ${timeout}=1 min
    Wait Until Keyword Succeeds    ${timeout}    5 sec    Element Should Have Non Zero Size    ${locator}

Element Should Have Non Zero Size
    [Arguments]    ${locator}
    ${width}=    Get Element Attribute    ${locator}    clientWidth
    ${height}=    Get Element Attribute    ${locator}    clientHeight
    Run Keyword Unless    ${width} > 0 and ${height} > 0    Fail    Element has zero size