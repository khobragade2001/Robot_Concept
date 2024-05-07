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



