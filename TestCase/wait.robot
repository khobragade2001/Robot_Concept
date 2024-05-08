*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://fast.com/
*** Keywords ***

*** Test Cases ***
Wait Page Handles
    open browser    ${url}      chrome
    set selenium speed    1 seconds
    maximize browser window
    wait until element is enabled       xpath://a[@id='show-more-details-link']
    click element    xpath://a[@id='show-more-details-link']
#    capture page screenshot
    sleep    3
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


