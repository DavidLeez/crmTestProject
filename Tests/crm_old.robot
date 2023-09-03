*** Settings ***
Documentation    this is some basic information about the whole suite
Library          SeleniumLibrary

#run the script
# robot -d results Tests/crm_old.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
	[Documentation]    this is a basic info about the test
	[Tags]             id_1006    Smoke    Contact
	#Initialize Selenium
	Set Selenium Speed      .2s
	Set Selenium Timeout    10s

	#open the browser
	Open Browser       about:blank  chrome

    #Start testing
    Log         starting the test case
	Go To       https://automationplayground.com/crm/

	#resize the window for recording
	#Set Window Size    x=341    y-169
	#Set Window Size    width=1935   height=1090

	Page Should Contain    Customers Are Priority One!

    Click Link    xpath=//*[@id="SignIn"]   # or can use: id=SignIn or name=sign-in-link or login.html
    Page Should Contain    Login

    Input Text    id=email-id   mytestemail1@gmail.com
    Input Text    id=password   Qwerty123
    Click Button    id=submit-id
    Page Should Contain    Our Happy Customers

    Click Link    id=new-customer
    Page Should Contain    Add Customer

    Input Text    id=EmailAddress   Joeslee@gmail.com
    Input Text    id=FirstName      Joes
    Input Text    id=LastName       Lee
    Input Text    id=City           Ho Chi Minh City
    Select From List By Value    id=StateOrRegion   TX
    Select Radio Button    gender   male
    Select Checkbox    name=promos-name
    Click Button       xpath=//*[@id="loginform"]/div/div/div/div/form/button
    Wait Until Page Contains    Success! New customer added.

	Sleep              3s
	Close Browser

*** Keywords ***
