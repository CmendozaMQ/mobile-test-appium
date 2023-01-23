*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Open_application
	Open Application	http://localhost:4723/wd/hub	platformName=Android	deviceName=emulator-5554	appPackage=chat21.android.demo	appActivity=chat21.android.demo.SplashActivity  automationName=Uiautomator2


#chat21.android.demo:id/login
#//android.widget.Button[@text="Login"]
#//android.widget.Button[contains(@text,"login")]
#//android.widget.Button[contains(@resource-id,'login')]
#//android.widget.Button[@resource-id='chat21.android.demo:id/login' and @text="Login"]