*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table Data
    open browser        https://rahulshettyacademy.com/AutomationPractice/      chrome
    maximize browser window
    ${rows}=    get element count       //table[@name='courses']/tbody/tr
    ${colums}=      get element count       //table[@name='courses']/tbody/tr[2]/td
    log to console    ${rows}
    log to console    ${colums}

    ### to print perticular cell values in the table
    ${data}=    get text    //td[contains(text(),'Selenium Webdriver with Java Basics + Advanced + I')]
    log to console    ${data}

    ### @@@@ table structure validatation @@@@ ###
    table row should contain    xpath://table[@name='courses']     3       Rahul Shetty

    table column should contain    xpath://table[@name='courses']      2       Course

    table cell should contain           xpath://table[@name='courses']       3       3       25     ### here 3=row number 3=column number and 25= cell values which is given in webside

    table header should contain    xpath://table[@name='courses']       Instructor      ### instructure = is a column name