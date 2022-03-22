*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Frames
    Open Browser   https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html     chrome
    Maximize Browser Window
    
    Select Frame    name:packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep   3
    
    Select Frame    xpath:.//*[@title='All classes and interfaces (except non-static nested types)']
    Click link      AcceptedW3CCapabilityKeys
    Unselect Frame
    Sleep    3
    
   Select Frame    class:rightIframe
   Click Link    Index
   Unselect Frame
   Sleep    3
   Close Browser
