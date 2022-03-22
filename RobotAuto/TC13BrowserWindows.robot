*** Settings ***
Library     SeleniumLibrary
Library    String


*** Test Cases ***
MultipleBrowsers

    Open Browser    https://www.google.co.in/       chrome
    Maximize Browser Window
    sleep   5
    Open Browser    https://www.bing.com/       chrome
    Maximize Browser Window

    Switch Browser    1
    ${title}=   Get Title 
    Log To Console    ${title}
    Title Should Be    Google
    
    Sleep    3
    Switch Browser    2
    ${title_1}=     Get Title
    Log To Console    ${title_1}
    Title Should Be    Bing

    Sleep    2
    Close All Browsers