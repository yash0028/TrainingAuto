*** Settings ***
Library     SeleniumLibrary
Library    XML


*** Test Cases ***
Webtable
    Open Browser    http://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    ${Row}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    Log To Console    ${Row}
    ${Col}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr/th
    Log To Console    ${Col}
    ${Data}=     Get Text    xpath://table[@name='BookTable']/tbody/tr[3]/td[4]
    Log To Console    ${Data}

    Table Column Should Contain    xpath://table[@name='BookTable']     2       Author
    Table Row Should Contain    xpath://table[@name='BookTable']     4      Animesh
    Table Cell Should Contain    xpath://table[@name='BookTable']    2    4    300
    Table Header Should Contain    xpath://table[@name='BookTable']    Price