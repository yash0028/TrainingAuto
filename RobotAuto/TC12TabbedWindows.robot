*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TabbedWindows

    Open Browser    http://demo.automationtesting.in/Windows.html       chrome
    Maximize Browser Window
    Click Element    xpath://*[@id='Tabbed']/a/button
    Switch Window   title=Selenium
    Click Element    xpath://*[@id='main_navbar']/ul/li[4]/a/span
    Close Browser