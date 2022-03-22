*** Settings ***
Library     SeleniumLibrary

#Right,Double click, Drag and Drop

*** Test Cases ***
MouseActions

    Open Browser    http://demo.guru99.com/test/simple_context_menu.html    chrome
    Maximize Browser Window
    Capture Page Screenshot
    open context menu     xpath://*[@id="authentication"]/span
    Sleep    5
    Capture page Screenshot

    ##Doubleclick
    Go To    http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Capture Page Screenshot
    Double Click Element    xpath://*[@class='sidebar section']/div[1]/div/button
    Sleep    3
    Capture Page Screenshot
    #Close All Browsers

    ##Drag&Drop
    Go To   http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Capture Page Screenshot
    Drag And Drop    xpath://*[@id='draggable']/p    xpath://*[@id='droppable']
    Capture Page Screenshot
    Close All Browsers