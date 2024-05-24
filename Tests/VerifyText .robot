# Created by mnowaisser at 5/23/2024
*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/VerifyTextSteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Verify Welcome Text

    VerifyTextSteps.Steps
