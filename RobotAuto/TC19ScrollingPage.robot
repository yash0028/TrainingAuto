*** Settings ***
Library    SeleniumLibrary
Library    Screenshot


*** Test Cases ***
PageScroll
    Open Browser    http://demo.guru99.com/test/guru99home/     chrome
    Maximize Browser Window
    #Execute Javascript  window.scrollTo(0,1500)  #Using pixels
    sleep   3
    #Capture Page Screenshot
    #Scroll Element Into View    xpath://*[@id='philadelphia-field-email']
    #Capture Page Screenshot

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)   #End of Page
    Capture Page Screenshot
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  #Starting Point
    Capture Page Screenshot
    Close Browser
