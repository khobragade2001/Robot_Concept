*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/resource.robot

*** Variables ***
${url}      https://rahulshettyacademy.com/AutomationPractice/
${browser}      chrome

*** Test Cases ***
################### keyword without /arguments #########################
User define keyword
    Browser_Launch
    click element    xpath://input[@value='radio1']
    sleep    1

################### keyword with Argument#####################
Login Page
    ${var}=     Lounch Browser      ${url}       ${browser}
    log to console    ${var}
    log    ${var}
    click element    xpath://input[@value='radio1']
    sleep    1

*** Keywords ***
Browser_Launch
    open browser        ${url}      ${browser}
    maximize browser window