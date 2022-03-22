*** Settings ***
Library  SeleniumLibrary

#visibility status, Enabled status, Provide value, Clearing value, Verify page title

*** Variables ***
${chromedriver}     chrome
${url}      https://demo.nopcommerce.com
${email}    id=Email

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${chromedriver}
    Maximize Browser Window
    Title Should Be     nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    Element Should Be Visible    ${email}
    Element Should Be Enabled    ${email}
    Input Text  ${email}  xyzabc@gmail.com
    Sleep    5
    Clear Element Text    ${email}
    ${pwd_txt}  Set Variable    id=Password
    Element Should Be Visible    ${pwd_txt}
    Element Should Be Enabled    ${pwd_txt}
    Input Text  id=Password   kjskl
    Sleep    5
    Clear Element Text    ${pwd_txt}
    ${subscribe}    Set Variable    xpath=//*[@id="newsletter-subscribe-button"]
    Element Should Not Be Visible    ${subscribe}
    Sleep   5
    Close Browser
*** Keywords ***


