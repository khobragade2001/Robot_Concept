*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}      https://parabank.parasoft.com/parabank/index.html

*** Test Cases ***
LoginPage
    open browser        ${url}      chrome
    LoginToApplication


*** Keywords ***
LoginToApplication
    input text  xpath://input[@name='username']     AShish
    input text  xpath://input[@name='password']     Boss@007
    click element   xpath://input[@value='Log In']
    close browser

