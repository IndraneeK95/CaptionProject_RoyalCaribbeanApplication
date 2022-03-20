*** Settings ***
Documentation           This suite will handle all the test cases related
...                     to valid credential test. Test case TC_OH_3

Resource        ../resource/base/commonFunctionality.resource
Resource        ../resource/Pages/loginPage.resource

Library         DataDriver          file=../test_data/royal_data.xlsx       sheet_name=Sheet2
Test Setup      Launch Browser and Navigate to url
Test Teardown   Close Browser
Test Template   Verify valid login credential

*** Test Cases ***
TC1    chet123@gmail.com    chet123a    Chetna


*** Keywords ***
Verify valid login credential
   [Arguments]     ${email}    ${password}   ${text}
   Enter Email     ${EMPTY}
   Enter Password    ${password}
   Click Login
   Validate message      ${text}


