*** Settings ***
Library  SeleniumLibrary


*** variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
#LoginPage
    #Create Webdriver    chrome  executable_path="C:\Users\yashwanth\PycharmProjects\Drivers\chromedriver.exe"
    #Open Browser    https://demo.nopcommerce.com/    chrome
    #Click Link    xpath://a[@class='ico-login']
    #Input Text  id=Email  xyzabc@gmail.com
    #Input Text  id=Password   kjskl
    #Click Element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    #Close Browser

LoginPage
    Open Browser    ${url}  ${browser}
    Click Link    xpath://a[@class='ico-login']
    Input Text  id=Email  xyzabc@gmail.com
    Input Text  id=Password   kjskl
    Click Element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    Close Browser





*** Keywords ***



