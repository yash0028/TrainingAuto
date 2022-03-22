*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Variables ***

*** Keywords ***
*** Test Cases ***
WaitsTc7

    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    ${timeout}=     Get Selenium Timeout
    Log To Console    ${timeout}
    Set Selenium Timeout    10seconds         #now timeout is 10 seconds instead of 5 seconds, only applies for one step
    Wait Until Page Contains    Registration    #default timeout is 5Seconds
    Select Radio Button    Gender   M
    Input Text    name:FirstName    Singam
    Input Text    name:LastName     Baba
    Input Text    name:Email        Singam@yahoo.com
    Input Text    name:Password     BabaBaba
    Input Text    name:ConfirmPassword     BabaBaba


