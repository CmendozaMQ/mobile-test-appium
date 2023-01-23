*** Settings ***
Library           SeleniumLibrary
Library           Collections

*** Variables ***

*** Test Cases ***
AndroidConnection
    ${Options}    Create Dictionary    androidPackage    com.android.chrome
    ${caps}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${caps}    platformName    Android
    Set to Dictionary    ${caps}    platformVersion    10.0
    Set To Dictionary    ${caps}    deviceName    emulator-5554
    Set To Dictionary    ${caps}    browserName    Chrome
    Create Webdriver    Remote    command_executor=http://localhost:4723/wd/hub    desired_capabilities=${caps}
    go to    http://www.google.com
    Close Browser