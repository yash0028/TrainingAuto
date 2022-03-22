*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/2LoginDDT.robot
Suite Setup     Openmybrowser
Suite Teardown  Closebrowsers
Test Template   InvalidLogin


*** Test Cases ***      username        password
Right user empty password       admin@yourstore.com     ${EMPTY}
Right user wrong password       admin@yourstore.com     xyz
Wrong user right password       admin22@yourstore.com   admin
Wrong user empty password       admin22@yourstore.com   ${EMPTY}
Wrong user wrong password       admin22@yourstore.com   tyi


*** Keywords ***
InvalidLogin
    [Arguments]     ${username}     ${password}
    EmailInput    ${username}
    Passwd    ${password}
    ClickLogin
    LoginFailure
