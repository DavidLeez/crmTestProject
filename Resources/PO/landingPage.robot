*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
	#open the browser
	#Open Browser       about:blank  chrome

    #Start testing
    #Log         starting the test case
	Go To       https://automationplayground.com/crm/

Verify Page Loaded
	Wait Until Page Contains    Customers Are Priority One!