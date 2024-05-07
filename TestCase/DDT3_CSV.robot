*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Login_resource.robot
Library    DataDriver   ../Test_data/Book2.csv

Suite Setup    browser open     ##open only one time
Suite Teardown    browser close     ##open only one time
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

