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

#Click Radio Button Method In Robot
#        click element
#        click button
#        click element at coordinates
#        click image
#        click link
#        close window
#
#        radio button should be set to
#        radio button should not be selected
#        page should contain radio button
#        page should not contain radio button
#        select radio button


