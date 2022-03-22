*** Settings ***
Library     SeleniumLibrary
*** Variables ***
# default delay time is 0seconds
# sleep waits for only that next step not for all steps, to pause execution of a step
# set selenium speed applicable to all statements in script
*** Keywords ***
*** Test Cases ***
WaitsTc
    ${Speed}=   Get Selenium Speed
    Log To Console    ${Speed}
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    #Sleep    3
    Set Selenium Speed    1 seconds
    Select Radio Button    Gender   M
    Input Text    name:FirstName    Singam
    Input Text    name:LastName     Baba
    Input Text    name:Email        Singam@yahoo.com
    Input Text    name:Password     BabaBaba
    Input Text    name:ConfirmPassword     BabaBaba
    ${Speed1}=   Get Selenium Speed
    Log To Console    ${Speed1}

