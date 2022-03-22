*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${chromedriver}     chrome
${url}     https://chercher.tech/practice/practice-dropdowns-selenium-webdriver

*** Test Cases ***
TestingDropDownsandListDowns
    Open Browser    ${url}      ${chromedriver}
    Maximize Browser Window
    #Set Selenium Speed    2seconds
    Select From List By Value    id=first   Yahoo
    Sleep    2
    Select From List By Index    id=first   1
    Sleep   2
    Select From List By Label    xpath=.//*[@class="card mb-3"]/div[2]/p[1]/select[1]  Iphone

#ListBox
    Select From List By Value    id=second   pizza
    Sleep   3
    Select From List By Index    id=second   3
    Sleep    3
    Unselect From List By Label    id=second    Pizza
    Sleep    3
    Close Browser

*** Keywords ***