*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://parabank.parasoft.com/parabank/index.htm
*** Test Cases ***
Get All Link
    open browser    ${url}      chrome
    ${var_all_element}=     get element count    xpath://a
    log to console    ${var_all_element}
    sleep    3

    ### @@@@@@@@@@@@ print all link using loop @@@@@@@@@@@@
    @{linkitem}=    create list       ### create list and save into variable linkitem

    FOR    ${ i }     IN RANGE    1   ${var_all_element}+1
       ${LinkText}=    get text    xpath:(//a)[${ i }]      ##### all link store into LinkText variables
       log to console    ${LinkText}        ### print all link into console
    END


