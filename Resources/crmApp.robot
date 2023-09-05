*** Settings ***
#Library     SeleniumLibrary
Resource        ../Resources/PO/landingPage.robot
Resource        ../Resources/PO/login.robot
Resource        ../Resources/PO/topNav.robot
Resource        ../Resources/PO/customerPage.robot

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
