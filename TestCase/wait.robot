*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.hyrtutorials.com/p/waits-demo.html
*** Keywords ***
###                                                      robot TestCase/wait.robot                                 run command

*** Test Cases ***
Wait Page Handles
    open browser    ${url}      chrome
    maximize browser window
    click element     xpath://button[@id='btn1']

    wait until page contains element    xpath://h3[normalize-space()='Show the textboxes here:']//input[@id='txt1']
    input text   xpath: //h3[normalize-space()='Show the textboxes here:']//input[@id='txt1']       Hello World
    capture page screenshot     D:\CREDENCE CLASS\AUTOMATION\Robot\ScreenShots\wait.png
    sleep    1

#
#Wait Methods In Robot

#        wait for condition
#        wait for expected condition
#        wait until element contains
#        wait until element does not contain
#        wait until element is enabled
#        wait until element is not visible
#        wait until element is visible
#        wait until keyword succeeds
#        wait until location contains
#        wait until location does not contain
#        wait until location is
#        wait until location is not
#        wait until page contains
#        wait until page contains element
#
#        get selenium implicit wait
#        set browser implicit wait
#        set selenium implicit wait


