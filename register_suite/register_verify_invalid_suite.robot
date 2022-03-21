*** Settings ***
Documentation           This suite will handle all the test cases related
...                     to incorrect registration details.Test template with Excel(Page objet model included)

Resource        ../resource/base/commonFunctionality.resource
Resource    ../resource/Pages/registrationPage.resource

Library         DataDriver          file=../test_data/royal_data.xlsx       sheet_name=Sheet3
Test Setup      Launch Browser and Navigate to url
Test Teardown   Close Browser
Test Template   Verify invalid register details

*** Test Cases ***
TC1




*** Keywords ***
Verify invalid register details
    [Arguments]     ${name}    ${surname}   ${year}    ${email}   ${pass}    ${question}    ${message}
    Set Selenium Speed    2s
    Click account create
    Enter name    ${name}
    Enter surname    ${surname}
    Select month
    Select month_name
    Select day
    Scroll Element Into View     xpath=//span[contains(text(),'26')]
    Select day_name
    Enter year    ${year}
    Select country
    Click Element    xpath=(//span[contains(text(),'India')])[2]
    Enter email_reg    ${email}
    Click question
    Scroll Element Into View     xpath=//span[contains(text(),' What elementary school did you go to? ')]
    Click Element    xpath=//span[contains(text(),' What elementary school did you go to? ')]
    Enter answer     ${question}
    Click check
    Click Registration_done
    Verify finsih_error message    ${message}