*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
	Open Browser    about:blank     chrome

End Web Test
	Close Browser

#sample - do not use from this line ----
Insert Testing Data
	Custom Keyword 1ª
	Custom Keyword 2

Cleanup Testing Data
	Log    I am cleaning up the test data...

Custom Keyword 1
	Log    Doing keyword 1

Custom Keyword 2
	Log    Doing keyword 2