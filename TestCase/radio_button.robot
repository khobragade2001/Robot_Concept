*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Test_Radio_button
    open browser        ${url}      chrome
    maximize browser window
    set selenium speed      1seconds

    ### selecting radio button
    select radio button     radioButton      radio3

    ### selecting check box
    select checkbox         checkBoxOption1
    select checkbox         checkBoxOption2
    sleep   3
    unselect checkbox       checkBoxOption1
    close browser





*** Keywords ***


