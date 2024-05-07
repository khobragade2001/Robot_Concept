*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}      https://parabank.parasoft.com/parabank/index.html

*** Test Cases ***
LoginPage
    open browser        ${url}      chrome
    maximize browser window
    ${"email_xpath"}      set variable        xpath://input[@name='username']
    ${"password_xpath"}      set variable       xpath://input[@name='password']
    Element Should Be Visible       ${"email_xpath"}

    input text      ${"email_xpath"}       Boss
    input text      ${"password_xpath"}       Boss@007
    sleep   3
    clear element text      ${"email_xpath"}
    input text      ${"email_xpath"}       Khobragade2001@gmail.com
    click element   xpath://input[@value='Log In']
    sleep   5
    close browser



*** Keywords ***


