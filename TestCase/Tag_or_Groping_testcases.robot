*** Settings ***

*** Test Cases ***
TC_001
    [Tags]    sanity
    log to console    this is test cases 001 and he belongs to sanity catagary

TC_002
    [Tags]    regression
    log to console      this is test case 002 and his belongs to regression catagary

TC_003
    [Tags]    sanity
    log to console  this is test cases 003 and he belongs to sanity catagary

TC_004
    [Tags]    ashish
    log to console      this is test case 004 and his belongs to ashish catagary


#run command
#robot --include=sanity TestCase/Tag_or_Groping_testcases.robot                 ## @@@    only run sanity tag name test case
#robot --include=regression TestCase/Tag_or_Groping_testcases.robot        ## @@@    only run regression tag name test case
#robot -i sanity TestCase/Tag_or_Groping_testcases.robot                                 ## @@@    by using -i we can run
#robot --exclude=sanity TestCase/Tag_or_Groping_testcases.robot               ##@@@ except sanity all test cases run
#robot -e regression TestCase/Tag_or_Groping_testcases.robot                      ##@@@ except regression all test cases run

