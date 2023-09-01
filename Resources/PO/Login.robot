*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login
	Click Link    xpath=//*[@id="SignIn"]   # or can use: id=SignIn or name=sign-in-link or login.html
    Page Should Contain    Login

    Input Text    id=email-id   mytestemail1@gmail.com
    Input Text    id=password   Qwerty123
    Click Button    id=submit-id
    Page Should Contain    Our Happy Customers