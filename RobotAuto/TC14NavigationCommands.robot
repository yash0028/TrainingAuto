*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
NavCommands
    Open Browser    https://www.google.com      chrome
    ${loca}=    Get Location
    Log To Console    ${loca}
    Sleep    3

    Go To    https://www.bing.com
    ${loc1}=    Get Location
    Log To Console    ${loc1}
    Sleep    3

    Go Back
    ${loc2}=    Get Location
    Log To Console    ${loc2}
    Sleep    3