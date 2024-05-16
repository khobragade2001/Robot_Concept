*** Settings ***
Library    SeleniumLibrary
Resource       ../Resource/Login_resource.robot
Suite Setup    browser open
Suite Teardown    browser close
Test Template    Invalid Login



*** Test Cases ***                      username                            password
Right User Wrong Pass           admin@yourstore.com    BOSS

Wrong User Right Pass          admin@yourstore.co        admin

Wrong User Wrong Pass       admin@yourstore.co        BOSS

Right User Empty Pass            admin@yourstore.com     ${EMPTY}

Empty User Right Pass             ${EMPTY}                            admin

*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Passsword    ${password}
    Click On Login Button
    sleep    5
    Error Message Show
    close browser


