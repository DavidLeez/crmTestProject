*** Settings ***
Documentation    This is some basic info about the whole suite
Resource         ../Resources/common.robot
Resource         ../Resources/crmApp.robot
#Suite Setup      Insert Testing Data
#Tests Setup       common.Begin Web Tests
#Tests Teardown    common.End Web Tests
#Suite Teardown   Cleanup Testing Data

*** Variables ***


*** Test Cases ***
Home page should load
	[Documentation]    Verify the home page is loaded
	[Tags]             id_1001     Smoke    Home
	crmApp.Homepage Is Loaded

Login should succeed with valid credentials
	[Documentation]    Login should succeed with valid credentials
	[Tags]             id_1002     Smoke    Login
	crmApp.Login To Account

Login should fail with missing credentials
	[Documentation]    Login should fail with missing credentials
	[Tags]             id_1003     Functional    Login
	crmApp.Homepage Is Loaded
	crmApp.Fail Login To Account

Remember me checkbox should persist email address
	[Documentation]    "Remember me" checkbox should persist email address
	[Tags]             id_1004     Functional    Login