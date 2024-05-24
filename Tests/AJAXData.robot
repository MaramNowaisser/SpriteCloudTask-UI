*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/AJAXDATASteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Wait For AJAX Data

         AJAXDATASteps.Steps

