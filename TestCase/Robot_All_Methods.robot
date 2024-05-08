*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Wait Methods In Robot
        ############### wait Method
        wait for condition
        wait for expected condition
        wait until element contains
        wait until element does not contain
        wait until element is enabled
        wait until element is not visible
        wait until element is visible
        wait until keyword succeeds
        wait until location contains
        wait until location does not contain
        wait until location is
        wait until location is not
        wait until page contains
        wait until page contains element

        get selenium implicit wait
        set browser implicit wait
        set selenium implicit wait

Alert Methods In Robot
        alert should be present
        alert should not be present
        handle alert
        input text into alert

Drop Down Method In Robot
        select from list by index
        select from list by label
        select all from list
        select from list by value
        unselect from list by index
        unselect from list by value
        unselect from list by label

Mouse Method In Robot
    double click element
    drag and drop
    drag and drop by offset
    mouse over
    mouse down
    mouse down on image
    mouse down on link
    mouse out
    mouse up

Click Radio Button Method In Robot
        click element
        click button
        click element at coordinates
        click image
        click link
        close window

        radio button should be set to
        radio button should not be selected
        page should contain radio button
        page should not contain radio button
        select radio button

ScreenShots Method In Robot
        capture page screenshot
        capture element screenshot

Scrolling page Method In Robot
        scroll element into view

Send Keys
        input text

Browser MEthod In Robot
    open browser
    close all browsers
    close browser
    switch browser
    set browser implicit wait
    maximize browser window
    get browser aliases
    get browser ids
    minimize browser window




