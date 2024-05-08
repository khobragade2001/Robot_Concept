*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://vinothqaacademy.com/alertandpopup/

*** Test Cases ***
Alert Handles
    
    open browser    ${url}      chrome
    set selenium speed    1
    maximize browser window
    
    ### simple alert
    click element    xpath://button[@name='alertbox']
    handle alert    accept
    sleep    2

    ## confirm Alerts
    click element    xpath://button[@name='confirmalertbox']
    handle alert    accept
    sleep    2

    ## prompt Alerts
    click element    xpath://button[@name='promptalertbox1234']
    input text into alert    AShish

#Alert Methods In Robot
#        alert should be present
#        alert should not be present
#        handle alert
#        input text into alert
