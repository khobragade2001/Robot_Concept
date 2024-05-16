*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${app url}          https://admin-demo.nopcommerce.com/
${browser}      chrome


*** Keywords ***
Lounch Browser
    [Arguments]    ${app url}       ${browser}
    open browser    ${app url}      ${browser}
    maximize browser window
    ${page_Title}=      get title
    [Return]      ${page_Title}