*** Settings ***
Library     AppiumLibrary
Variables   ../Resources/variables_mobile.py
Resource    ../Resources/flow_main.robot


*** Test Cases ***
verify the a element from asset area
	Click asset area
	Click ok to scan option message
	Click search button
	Search element "04-02-0024" by keyword field
	Click search button in asset area
	Verify the element "04-02-0024"
	Click asset element "04-02-0024"
	Sleep    2
	Verify asset element data "Mag Rack" "04-02-0024" "ASRS"
	Click 3 lines icon
	Click 3 lines icon
	Click main menu