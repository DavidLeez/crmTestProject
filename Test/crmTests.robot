*** Settings ***
Documentation    This is some basic info about the whole suite
Resource         ../Resources/common.robot
Resource         ../Resources/crmApp.robot
#Suite Setup      Insert Testing Data
#Test Setup       common.Begin Web Test
#Test Teardown    common.End Web Test
#Suite Teardown   Cleanup Testing Data

*** Variables ***


*** Test Cases ***
Home page should load
	[Documentation]    Verify the home page is loaded
	[Tags]             tcs_id_1001     Smoke    Home
	crmApp.Homepage Is Loaded

Login should succeed with valid credentials
	[Documentation]    Login should succeed with valid credentials
	[Tags]             tcs_id_1002     Smoke    Login
	crmApp.Login To Account

Login should fail with missing credentials
	[Documentation]    Login should fail with missing credentials
	[Tags]             tcs_id_1003     Functional    Login

Remember me checkbox should persist email address
	[Documentation]    "Remember me" checkbox should persist email address
	[Tags]             tcs_id_1004     Functional    Login