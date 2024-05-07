*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Login_resource.robot
Suite Setup    browser open
Suite Teardown    browser close







*** Test Cases ***
Right User Empty Pass           admin@yourstore.com     ${EMPTY}




*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Passsword    ${password}
    Click On Login Button
    Error Message Show
    close browser


