*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
LaunchArgumentsAndReturnValue
    [Arguments]     ${ARG1}     ${ARG2}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${Title}=   Get Title
    [Return]   ${Title}
