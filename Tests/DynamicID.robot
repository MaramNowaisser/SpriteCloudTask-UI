# Created by mnowaisser at 5/23/2024
*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/DynamicIDSteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Record Button Click Without Using Dynamic ID

   DynamicIDSteps.Steps