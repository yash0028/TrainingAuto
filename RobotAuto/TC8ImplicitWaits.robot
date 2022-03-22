*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Variables ***

*** Keywords ***
*** Test Cases ***
WaitsTc8Implicit

    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    ${implicit_time}=   Get Selenium Implicit Wait
    Log To Console    ${implicit_time}
    Set Selenium Implicit Wait    10seconds     #implicit wait applicable to every statement in the script
    ${implicit_time}=   Get Selenium Implicit Wait
    Log To Console    ${implicit_time}
    Select Radio Button    Gender   M
    Input Text    name:FirstName1    Singam
    Input Text    name:LastName     Baba
    Input Text    name:Email        Singam@yahoo.com
    Input Text    name:Password     BabaBaba
    Input Text    name:ConfirmPassword     BabaBaba


