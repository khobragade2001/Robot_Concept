*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Login_resource.robot
Test Setup    browser open
Test Teardown    browser close
Test Template    Invalid Login



*** Test Cases ***                      username                            password
Right User Wrong Pass       admin@yourstore.com    BOSS
Wrong User Right Pass       admin@yourstore.co        admin
Wrong User Wrong Pass       admin@yourstore.co        BOSS
Right User Empty Pass       admin@yourstore.com     ${EMPTY}


*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Passsword    ${password}
    Click On Login Button
    Error Message Show
    close browser



