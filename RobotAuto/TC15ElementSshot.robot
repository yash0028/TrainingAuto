*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ElementSshot
    Open Browser    https://opensource-demo.orangehrmlive.com/      chrome
    Maximize Browser Window
    Input Text    xpath://*[@id='txtUsername']    abcd
    Input Text    xpath://*[@id='txtPassword']    poiu
    #Capture Element Screenshot    xpath://*[@id='divLogo']/img     C:/Users/yashwanth/PycharmProjects/TrainingAuto/Element.jpg
    #Capture Page Screenshot     C:/Users/yashwanth/PycharmProjects/TrainingAuto/PageSshot.jpg

    Capture Element Screenshot    xpath://*[@id='divLogo']/img      ElemSShot.jpg
    Capture Element Screenshot    xpath://*[@id='divLogo']/img      Sshot.jpg
    sleep   3


    Close All Browsers
