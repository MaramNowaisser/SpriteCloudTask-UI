# Created by mnowaisser at 5/23/2024
*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/ScrollbarsSteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Scroll To Hidden Element And Click

   ScrollbarsSteps.Steps
