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
	Login to the application as "zebra""z3bran0n3"
	Click login button
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

#	Click Element    ${LOGIN-BUTTON}
#	Sleep    20
#	Click Element    //android.widget.Button[@text="Continue"]
#	Sleep    2
#	Click Element    //android.widget.Button[@text="OK, got it"]
#	Sleep    2
#	Go To Url	https://encuentralos.org/missing-people
#	Sleep    10
#	Switch To Frame    simulator
#	#Sleep    2
#	Click Element    //span[@class='mdi mdi-magnify-plus']
	
#com.newvisiondata.virtual_locker:id/btnNflAuth
#chat21.android.demo:id/login
#//android.widget.Button[@text="Login"]
#//android.widget.Button[contains(@text,"login")]
#//android.widget.Button[contains(@resource-id,'login')]
#//android.widget.Button[@resource-id='chat21.android.demo:id/login' and @text="Login"]