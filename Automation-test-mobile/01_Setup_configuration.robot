*** Settings ***
Library     AppiumLibrary
Variables   ../Resources/variables_mobile.py
Resource    ../Resources/flow_main.robot


*** Test Cases ***
verify the a element from asset area
	Mobile flow configuration
    Login to the application as "setup""none"
	Click login button
	Sleep    2
	Configure flow server
	Click save button