*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Mouse Operation
    open browser    ${url}      chrome
    maximize browser window

    ### mouse hover
    mouse over    xpath://button[@onclick='myFunction()']
    sleep    2
#    click element    xpath://button[@id='mousehover']

Double click Elements
### Double click
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    2

### Right click Action
Right Click Action
    open browser    ${url}      chrome
    maximize browser window
    open context menu    xpath://div[@id='droppable']
    sleep    2

