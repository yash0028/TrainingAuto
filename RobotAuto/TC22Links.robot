*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
ExtractLinks

    Open Browser    http://demo.guru99.com/test/newtours/       chrome
    Maximize Browser Window
    ${count}=   Get Element Count    xpath://a
    Log To Console    ${count}

    @{LinkList}     Create List 
    FOR    ${i}    IN RANGE   1    ${count}+1
     ${Text}=   Get Text    xpath:(//a)[${i}]
     Log To Console    ${Text}
    END
    Close Browser