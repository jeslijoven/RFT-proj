*** Settings ***
Library           Selenium2Library
Resource          ../Scalars/Optimy_HomePage_Elements.robot
Resource          ../Scalars/LostPassword_Page_Elements.robot

*** Keywords ***
Setup
    Open Browser    ${URL}    chrome
    #Set Selenium Speed    1

Login_Page_Validation
    Set Selenium Speed    1
    #Login page validation
    Wait Until Element Is Visible    ${Optimy_Logo}    10
    Element Should Be Visible    ${Email_TB}
    Element Should Be Visible    ${Passsword_TB}
    Element Should Be Visible    ${Login_Button}
    Element Should Be Visible    ${LostPw_Button}
    Element Should Be Visible    ${PoweredByOptimyBtn}
    #EXECUTING NEGATIVE TESTING
    #Error message field required validation in both email and password
    Click Button    ${Login_Button}
    Wait Until Element Is Visible    ${ErrorMsgEmail}
    Element Should Be Visible    ${ErrorMsgPW}
    #Email field requires valid email validation
    Input Text    ${Email_TB}    ${InvalidEmail}
    Wait Until Element Is Visible    ${ErrorMsgEnterValidEmail}
    Clear Element Text    ${Email_TB}
    #Valid email and password requirement validation
    Input Text    ${Email_TB}    ${ValidEmail}
    Input Text    ${Passsword_TB}    ${InvalidPW}
    Click Element    ${Login_Button}
    Wait Until Element Is Visible    ${InvalidEmailPwError}    15

Lost_PW_Page_Validation
    Set Selenium Speed    1
    #Lost password page validation
    Wait Until Element Is Visible    ${LostPassword}    10
    Click Element    ${LostPassword}
    Wait Until Element Is Enabled    ${Cancel_Btn}
    #Validate cancel button
    Click Element    ${Cancel_Btn}
    Wait Until Element Is Visible    ${LostPw_Button}
    #Returns to lost password page validation
    Click Element    ${LostPw_Button}
    Wait Until Element Is Visible    ${RecoverAccess_Btn}
    Click Element    ${RecoverAccess_Btn}
    #Invalid Email Validation
    Input Text    ${Email_TB2}    ${InvalidEmail}
    Wait Until Element Is Visible    ${ErrorMsgEnterValidEmail}
    Clear Element Text    ${Email_TB2}
    #Valid email validation
    Input Text    ${Email_TB2}    ${ValidEmail}
    Click Element    ${RecoverAccess_Btn}
    Wait Until Element Is Visible    ${MessageAfterValidEmailEntered}    15
