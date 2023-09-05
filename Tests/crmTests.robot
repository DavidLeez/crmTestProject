*** Settings ***
Documentation    This is some basic info about the whole suite
Resource         ../Resources/common.robot
Resource         ../Resources/crmApp.robot
Test Setup       common.Begin Web Test
Test Teardown    common.End Web Test

*** Variables ***


*** Test Cases ***
Home page should load
	[Documentation]    Verify the home page is loaded
	[Tags]             id_1001     Smoke    Home
	crmApp.Homepage Is Loaded
	common.End Web Test

Login should succeed with valid credentials
	[Documentation]    Login should succeed with valid credentials
	[Tags]             id_1002     Smoke    Login
	crmApp.Homepage Is Loaded
	crmApp.Login To Account
	common.End Web Test

Login should fail with missing credentials
	[Documentation]    Login should fail with missing credentials
	[Tags]             id_1003     Functional    Login
	crmApp.Homepage Is Loaded
	crmApp.Fail Login To Account

Remember me checkbox should persist email address
	[Documentation]    "Remember me" checkbox should persist email address
	[Tags]             id_1004     Functional    Login