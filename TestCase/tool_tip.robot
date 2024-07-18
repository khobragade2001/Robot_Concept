*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://seleniumpractise.blogspot.com/

*** Test Cases ***
Tool tip store
    open browser    ${url}      chrome
    maximize browser window
    ${tooltip}=     get element attribute    xpath://a[normalize-space()='Hover over me']
    log    the tooltip text is : ${tooltip}

