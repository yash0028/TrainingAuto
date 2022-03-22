*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
#ForLoop1
    FOR   ${i}    IN RANGE    1   10
    Log to console      ${i}
    END

#ForLoopWithList
    @{List}     Create List   1   2   5   6   7
    FOR    ${i}    IN    @{LIST}
        Log To Console    ${i}
    END
    
#ForLoopWithStrings
    FOR    ${i}    IN   John   Smith   Scott
        Log To Console    ${i}
         
    END

#ForLoopWithStringList
    @{List}     Create List   Yash  Kumar  Simha
    FOR    ${i}    IN    @{LIST}
        Log To Console    ${i}
    END
ForLoopWithExit
    @{List}     Create List   1  5  6  7  9
    FOR    ${i}    IN    @{LIST}
        Log To Console    ${i}
        Exit For Loop If    ${i}==6
    END






