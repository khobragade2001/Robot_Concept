*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://vinothqaacademy.com/multiplewindows/

*** Test Cases ***
Multiple Window Handles
    open browser    ${url}      chrome
    maximize browser window
    click element    xpath://div[@class='elementor-element elementor-element-f5f0e8d elementor-widget elementor-widget-html']//button[@id='button1']
    ${log}=     get location
    log to console      ${log}
    sleep    1
    ### new tab open
    get window handles    title:Demo Site – Multiple Windows – Vinoth Q.A Academy
    ${log}=     get location
    log to console      ${log}
    sleep    3
    

