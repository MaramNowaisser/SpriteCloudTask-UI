*** Settings ***
Resource  ../Resources/CommonFunctionality.resource
Resource  ../Resources/ClientSideDelaySteps.resource
Test Setup  CommonFunctionality.Start TestCase
Task Teardown  CommonFunctionality.Finish TestCase

*** Test Cases ***
Wait For Client Side Delay

    ClientSideDelaySteps.Steps