*** Settings ***
#Library     SeleniumLibrary
Resource        ../Resources/PO/LandingPage.robot
Resource        ../Resources/PO/Login.robot
Resource        ../Resources/PO/TopNav.robot
Resource        ../Resources/PO/CustomerPage.robot

*** Keywords ***
Homepage Is Loaded
	LandingPage.Load
	LandingPage.Verify Page Loaded

Login To Account
	Login.Login Success

Fail Login To Account
	Login.Login Fail

#Top Navigation Bar
	#Do something on top navigation bar

#Contacts
	#Do something on contact page
