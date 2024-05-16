*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://rahulshettyacademy.com/AutomationPractice/
*** Keywords ***

*** Test Cases ***
Handling Drop down and lists
    open browser      ${url}        chrome
    maximize browser window

    ### selection methods
    select from list by index       dropdown-class-example     2
    sleep   3
    close browser
    


    
#Drop Down Method In Robot
#    select from list by value
#    select from list by label
#    select all from list
#    unselect from list by index
#    unselect from list by value
#    unselect from list by label




