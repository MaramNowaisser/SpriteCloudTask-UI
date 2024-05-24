*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/TextInputSteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Emulate Physical Keyboard Input


   TextInputSteps.Steps