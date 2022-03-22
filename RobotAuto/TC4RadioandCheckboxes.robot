*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${chromedriver}     chrome
${url}      http://demo.guru99.com/test/radio.html


*** Test Cases ***
TestingRadioBox
    Open Browser    ${url}      ${chromedriver}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Select Radio Button    webform    Option 1
    Select Radio Button    webform    Option 3
    
    Select Checkbox    checkbox1
    #Sleep    5
    Select Checkbox    checkbox3
    #Sleep    5
    Unselect Checkbox    checkbox1

*** Keywords ***