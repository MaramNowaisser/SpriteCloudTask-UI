*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/ClassAttributeSteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Click Primary Button and Handle Alert

   ClassAttributeSteps.Steps


