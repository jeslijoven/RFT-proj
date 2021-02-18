*** Settings ***
Library           Selenium2Library
Resource          Keywords/Optimy_TC_Steps.robot

*** Test Cases ***
Login Page Validation_Chrome
    [Setup]    Setup
    Login_Page_Validation
    [Teardown]    Close Browser

Lost password page validation Chrome
    [Setup]    Setup
    Lost_PW_Page_Validation
    [Teardown]    Close Browser
