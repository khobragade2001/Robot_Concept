*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome

*** Keywords ***
browser open
    open browser    ${url}      ${browser}
    maximize browser window

browser close
        close all browsers

Input Username
        [Arguments]    ${username}
        input text    xpath://input[@id='Email']        ${username}

Input Passsword
        [Arguments]    ${password}
        input text    xpath://input[@id='Password']        ${password}

Click On Login Button
    click element    xpath://button[@type='submit']

Click On Logout Button
        click element    xpath://a[normalize-space()='Logout']

Error Message Show
        page should contain    Login was unsuccessful.

Dashboard Should Be Vesible
        page should contain    Dashboard

