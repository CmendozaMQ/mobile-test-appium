*** Settings ***
Library     AppiumLibrary
Variables   ../Resources/variables_mobile.py
Resource    ../Resources/flow_main.robot


*** Test Cases ***
verify the a element from asset area
	Login to the application as "zebra""z3bran0n3"
	Click login button