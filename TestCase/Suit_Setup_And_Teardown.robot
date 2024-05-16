*** Settings ***
Library    SeleniumLibrary

Suite Setup     log to console      ** @@ this massage SHOW only when before test cases start..........................
Suite Teardown    log to console      ** @@ this massage SHOW only when after test cases END
Test Setup    log to console      $$$$$$ this massage SHOW when every test case start
Test Teardown    log to console      $$$$$$ this massage SHOW when every test case END.......................


*** Variables ***
${url_01}       https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${url_02}       https://parabank.parasoft.com/parabank/index.htm
${url_03}       https://credence.onlineclass.site/student/classes

*** Test Cases ***
Test_Case_001
        open browser    ${url_01}       chrome
        maximize browser window
        close browser

Test_Case_002
        open browser    ${url_02}       chrome
        maximize browser window
        close browser

Test_Case_003
        open browser    ${url_03}       chrome
        maximize browser window
        close browser

