*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          http://demo.guru99.com/test/newtours/
${browser}      chrome

*** Test Cases ***
#Predefined

    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Input Text    name:userName    yash
    Input Text    name:password    yashkjl
    Close Browser


#UserDefinedwithNoArguments
    LaunchBrowser
    Input Text    name:userName    yash
    Input Text    name:password    yashkjl
    Close Browser

#UserDefinedwithArguments
    LaunchBrowserWithArguments      ${url}      ${browser}
    Input Text    name:userName    yash7
    Input Text    name:password    yashkjl
    Close Browser

UserDefinedwithArgumentsAndReturnValue
    ${Page_Title}=   LaunchArgumentsAndReturnValue       ${url}      ${browser}
    Log To Console    ${Page_Title}
    Log     ${Page_Title}
    Input Text    name:userName    yash78
    Input Text    name:password    yashkjl
    Close Browser

*** Keywords ***
#LaunchBrowser
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

#LaunchBrowserWithArguments
    [Arguments]     ${ARG1}     ${ARG2}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

LaunchArgumentsAndReturnValue
    [Arguments]     ${ARG1}     ${ARG2}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${Title}=   Get Title
    [Return]   ${Title}
