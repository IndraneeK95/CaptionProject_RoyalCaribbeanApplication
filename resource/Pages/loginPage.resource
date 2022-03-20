*** Settings ***

Documentation       This file handles all operation related to login page
Resource        ../base/commonFunctionality.resource

*** Variables ***
${EMAIL_LOCATOR}     xpath=//input[@id='mat-input-0']
${PASSWORD_LOCATOR}     id=Password
${LOGIN_LOCATOR}       xpath=//button[@type='submit']

*** Keywords ***

Enter Email
    [Arguments]     ${email}
    Input Text    ${EMAIL_LOCATOR}       ${email}

Enter Password
    [Arguments]     ${password}
    Input Text     ${PASSWORD_LOCATOR}   ${password}

Click Login
    Click Element    ${LOGIN_LOCATOR}

Validate message
    [Arguments]         ${message}
    Page Should Contain    ${message}
