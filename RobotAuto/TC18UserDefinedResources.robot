*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/1Resources.robot

*** Variables ***
${url}          http://demo.guru99.com/test/newtours/
${browser}      chrome

*** Test Cases ***

UserDefinedwithArgumentsAndReturnValue
    ${Page_Title}=   LaunchArgumentsAndReturnValue       ${url}      ${browser}
    Log To Console    ${Page_Title}
    Log     ${Page_Title}
    Input Text    name:userName    yashXX
    Input Text    name:password    yashkjl
    Close Browser