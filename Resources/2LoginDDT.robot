*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome


*** Keywords ***
Openmybrowser
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Closebrowsers
    Close All Browsers

OpenLogin
    Go To    ${url}

EmailInput
    [Arguments]     ${Emailid}
    Input Text    xpath://*[@class='form-fields']/div[1]/input      ${Emailid}
    
Passwd
    [Arguments]     ${Pwd}
    Input Text    xpath://*[@class='form-fields']/div[2]/input    ${Pwd}

ClickLogin
    Click Element    xpath://* [contains(text(),'Log in')]
    
ClickLogout
    Click Link    xpath://a[contains(text(),'Logout')]

###validations
LoginFailure
    Page Should Contain    Login was unsuccessful
    
LoginSuccess
    Page Should Contain    Dashboard
#email: admin@youstore.com
#pwd:   admin