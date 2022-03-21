*** Settings ***
Documentation           This suite will handle all the test cases related
...                     to invalid credential test. Test template.(Page object model included)

Resource        ../resource/base/commonFunctionality.resource
Resource        ../resource/Pages/loginPage.resource


Test Setup      Launch Browser and Navigate to url
Test Teardown   Close Browser
Test Template   Verify invalid login credential

*** Test Cases ***
TC1    chet123@gmail.com    werggd      The email or password is not correct.


*** Keywords ***
Verify invalid login credential
    [Arguments]     ${email}    ${password}   ${text}
    Enter Email     ${email}
    Enter Password    ${password}
    Click Login
    Validate message    ${text}

