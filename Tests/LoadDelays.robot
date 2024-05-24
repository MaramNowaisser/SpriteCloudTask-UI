*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/LoadDelaysSteps.resource
Test Setup    Open Browser    ${BASE_URL}    browser=chrome
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Load Delays Test


    LoadDelaysSteps.Steps

