*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://history.state.gov/countries/all

*** Test Cases ***
Scrolling page
    open browser    ${url}      chrome
    maximize browser window
    execute javascript      window.scrollTo(0, 2500)
    capture page screenshot     D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/scroll_page_01.png
    sleep    3
    ########### scroll to perticular that elements @@@@@@@@@@@@@@@@
    scroll element into view    xpath://a[normalize-space()='India']
    capture page screenshot    D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/scroll_to_element.png
    sleep    3

    ############# scoll to end of page @@@@@@@@@@@@@@@@@
    execute javascript    window.scrollTo(0, document.body.scrollHeight)
    capture page screenshot    D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/scroll_to_end.png

    ## document.body.scrollHeigh => end of the page
    sleep    3

    ############# scoll to start of page @@@@@@@@@@@@@@@@@
    execute javascript    window.scrollTo(0, -document.body.scrollHeight)
    capture page screenshot    D:/CREDENCE CLASS/AUTOMATION/Robot/ScreenShots/scroll_to_start.png






