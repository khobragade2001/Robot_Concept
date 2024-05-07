*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Login_resource.robot
Library    DataDriver   ../Test_data/Book1.xlsx

Suite Setup    browser open
Suite Teardown    browser close
Test Template    Invalid Login



*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username   ${username}
    Input Passsword   ${password}
    Click On Login Button
    Error Message Show


*** Test Cases ***
Login_test_with_excel       ${username}     ${password}

