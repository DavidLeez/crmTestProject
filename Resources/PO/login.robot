*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login Success
	Click Link    xpath=//*[@id="SignIn"]   # or can use: id=SignIn or name=sign-in-link or login.html
    Page Should Contain    Login

    Input Text    id=email-id   mytestemail1@gmail.com
    Input Text    id=password   Qwerty123
    Click Button    id=submit-id
    Page Should Contain    Our Happy Customers

Login Fail
	Click Link    xpath=//*[@id="SignIn"]   # or can use: id=SignIn or name=sign-in-link or login.html
    Page Should Contain    Login

    Input Text    id=email-id   mytestemailfailed
    Input Text    id=password   Qwerty123
    Click Button    id=submit-id
    Page Should Contain    Please include an '@' in the email address.
