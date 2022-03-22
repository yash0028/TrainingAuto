*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
#Handling Alerts
    Open Browser    http://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    Click Element    xpath:.//*[contains(text(),'Click Me')]
    Sleep    3
   #Handle Alert    ACCEPT
   #Handle Alert    dismiss
   #Handle Alert     Leave
   Alert Should Be Present    Press a button!
   #Alert Should Not Be Present      loklkiop
 #********************************************
