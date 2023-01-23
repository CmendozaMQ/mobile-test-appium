*** Settings ***
Library     AppiumLibrary
#Library     AppiumEnhanceLibrary

*** Variables ***
#login ids
${id-username}     id=com.zebra.materialflow:id/editTextEmail
${id-password}     id=com.zebra.materialflow:id/editTextPassword
${id-login-button}     id=com.zebra.materialflow:id/buttonLogin
${id-server-address}    id=com.zebra.materialflow:id/editTextServerAddress
${id-save-button}    id=com.zebra.materialflow:id/buttonSaveServerAddress
#Assets area
${id-assets-area}   //android.widget.TextView[@text="Assets"]
${id-assets-ok}   //android.widget.TextView[@text="OK"]
${id-search-button}    id=com.zebra.materialflow:id/toolbarIconSearch
${id-text-keyword}    id=com.zebra.materialflow:id/editTextKeyword
${id-search-button-assets}    id=com.zebra.materialflow:id/buttonStartSearch
${id-element-04-02-0024}    //android.widget.TextView[@text="04-02-0024"]

${asset-type-04-02-0024}    //android.widget.TextView[@text="Mag Rack"]
${asset-id-04-02-0024}    //android.widget.TextView[@text="04-02-0024"]
${asset-owner-04-02-0024}    //android.widget.TextView[@text="ASRS"]

${arrow-3lines-icon}    id=com.zebra.materialflow:id/toolbarPrimaryIcon
${main-menu-home}    //android.widget.CheckedTextView[@text="Home"]

*** Test Cases ***
Open_application
	Open Application	http://localhost:4723/wd/hub	platformName=Android	platformVersion=8.1   deviceName=emulator-5554   automationName=appium  appPackage=com.zebra.materialflow  appActivity=com.newvisiondata.flow.home.MainActivity
	Input Text    ${id-username}    setup
	Input Text    ${id-password}    none
	Click Element    ${id-login-button}
	Sleep    2
	Clear Text    ${id-server-address}
	Input Text    ${id-server-address}    http://10.0.0.23:8080/flow
	Click Element    ${id-save-button}
	Sleep    2
	Input Text    ${id-username}    zebra
	Input Text    ${id-password}    z3bran0n3
	Click Element    ${id-login-button}
	Sleep   3
	Click Element    ${id-assets-area}
	Sleep   3
	Click Element    ${id-assets-ok}
	Sleep   3
	Click Element    ${id-search-button}
	Sleep   1
	Input Text    ${id-text-keyword}    04-02-0024
	Sleep    1
	Click Element    ${id-search-button-assets}
	Sleep    1
	Element Should Be Enabled    ${id-element-04-02-0024}
	Click Element    ${id-element-04-02-0024}
	Sleep    2
	Element Should Be Enabled    //android.widget.TextView[@text="Mag Rack"]
	Element Should Be Enabled    //android.widget.TextView[@text="04-02-0024"]
	Element Should Be Enabled    //android.widget.TextView[@text="ASRS"]
	Click Element    ${arrow-3lines-icon}
	Sleep    1
	Click Element    ${arrow-3lines-icon}
	Sleep    1
	Click Element    ${main-menu-home}

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