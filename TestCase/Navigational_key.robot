*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}

*** Test Cases ***
Navigate keys
    open browser    ${url}      chrome
    ${log}      get location
    log to console    ${log}

    go to    https://www.bing.com/
    ${log}      get location
    log to console    ${log}
    sleep    3
