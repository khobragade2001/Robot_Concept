*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://parabank.parasoft.com/parabank/index.htm

*** Test Cases ***
Take Screenshots
    open browser    ${url}      chrome
    maximize browser window
    input text    xpath://input[@name='username']       sherkhan
    input text    xpath://input[@name='password']       Boss@007
    click element    xpath://input[@value='Log In']
    sleep    2
    capture page screenshot     D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/loginpage.png
    capture element screenshot    xpath://img[@title='ParaBank']        D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/logo.png
