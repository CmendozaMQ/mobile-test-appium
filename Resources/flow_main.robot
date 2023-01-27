*** Settings ***
Library    AppiumLibrary

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


${asset-type-04-02-0024}    //android.widget.TextView[@text="Mag Rack"]
${asset-id-04-02-0024}    //android.widget.TextView[@text="04-02-0024"]
${asset-owner-04-02-0024}    //android.widget.TextView[@text="ASRS"]

${arrow-3lines-icon}    id=com.zebra.materialflow:id/toolbarPrimaryIcon
${main-menu-home}    //android.widget.CheckedTextView[@text="Home"]

*** Keywords ***
#Equipment Model
Mobile flow configuration
    Open Application	http://localhost:4723/wd/hub	platformName=Android	platformVersion=8.1   deviceName=emulator-5554   automationName=appium  appPackage=com.zebra.materialflow  appActivity=com.newvisiondata.flow.home.MainActivity

Login to the application as "${setup}""${none}"
	Input Text    ${id-username}    ${setup}
	Input Text    ${id-password}    ${none}

Click login button
	Click Element    ${id-login-button}
    Sleep   5

Configure flow server 
	Clear Text    ${id-server-address}
	Input Text    ${id-server-address}    http://10.0.0.23:8080/flow

Click save button
	Click Element    ${id-save-button}
	Sleep    2

Click asset area
	Click Element    ${id-assets-area}
	Sleep   3

Click ok to scan option message
	Click Element    ${id-assets-ok}
	Sleep   5

Click search button
	Click Element    ${id-search-button}
	Sleep   1

Search element "${asset_element}" by keyword field
	Input Text    ${id-text-keyword}    ${asset_element}
	Sleep    1

Click search button in asset area
	Click Element    ${id-search-button-assets}
	Sleep    1

Verify the element "${asset_element}"
	Element Should Be Enabled    //android.widget.TextView[@text="${asset_element}"]

Click asset element "${asset_element}"
	Click Element    //android.widget.TextView[@text="${asset_element}"]
    Sleep    2

Verify asset element data "${Mag Rack}" "${04-02-0024}" "${ASRS}"
	Element Should Be Enabled    //android.widget.TextView[@text="Mag Rack"]
	Element Should Be Enabled    //android.widget.TextView[@text="04-02-0024"]
	Element Should Be Enabled    //android.widget.TextView[@text="ASRS"]

Click 3 lines icon
	Click Element    ${arrow-3lines-icon}
	Sleep    1

Click main menu
	Click Element    ${main-menu-home}