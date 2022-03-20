*** Settings ***

Documentation       This file handles all operation related to login page
Resource        ../base/commonFunctionality.resource

*** Variables ***
${ACCOUNT_CREATE_LOCATOR}     xpath=//a[normalize-space()='Create an account']
${NAME_LOCATOR}              xpath=//input[@data-placeholder='First name/Given name']
${PASSWORD_LOCATOR}     xpath=//input[@data-placeholder='Last name/Surname']
${MONTH_LOCATOR}        xpath=//span[text()='Month']
${MONTH_NAME_LOCATOR}    xpath=//span[contains(text(),'April')]
${DAY_LOCATOR}           xpath=//span[text()='Day']
${DAY_NAME_LOCATOR}      xpath=//span[contains(text(),'26')]
${YEAR_LOCATOR}          xpath=//input[@data-placeholder='Year']
${RESIDENCE_LOCATOR}     xpath=//span[text()='Country/Region of residence']
${EMAIL_REG_LOCATOR}     xpath=//input[@data-placeholder='Email address']
${PASS_REG_LOCATOR}      id=mat-input-6
${QUESTION_LOCATOR}      xpath=//span[text()='Select one security question']
${ANSWER_LOCATOR}            xpath=//input[@data-placeholder='Answer']
${CHECK_LOCATOR}             xpath=//input[@type='checkbox']/..
${REGISTRATION_LOCATOR}        xpath=//button[normalize-space()='Done']
${REG_DONE_MSG_LOCATOR}     xpath=//span[@class='app-missing-cruise__title']
${REG_ERROR_MSG_LOCATOR}     xpath=//span[normalize-space()='Password is required.']
*** Keywords ***

Click account create
    Click Element   ${ACCOUNT_CREATE_LOCATOR}

Enter name
    [Arguments]     ${name}
    Input Text    ${NAME_LOCATOR}   ${name}

Enter surname
    [Arguments]     ${surname}
    Input Text    ${PASSWORD_LOCATOR}   ${surname}

Select month
     Click Element  ${MONTH_LOCATOR}

Select month_name
    Click Element    ${MONTH_NAME_LOCATOR}

Select day
    Click Element    ${DAY_LOCATOR}

Select day_name
    Click Element    ${DAY_NAME_LOCATOR}

Enter year
    [Arguments]   ${year}
    Input Text    ${YEAR_LOCATOR}   ${year}

Select country
    Click Element    ${RESIDENCE_LOCATOR}

Enter email_reg
    [Arguments]  ${email}
    Input Text        ${EMAIL_REG_LOCATOR}      ${email}

Enter pass_reg
    [Arguments]     ${pass}
    Input Text    ${PASS_REG_LOCATOR}   ${pass}

Click question
    Click Element    ${QUESTION_LOCATOR}

Enter answer
    [Arguments]     ${answer}
    Input Text     ${ANSWER_LOCATOR}        ${answer}

Click check
      Click Element   ${CHECK_LOCATOR}

Click Registration_done
    Click Element      ${REGISTRATION_LOCATOR}

Verify finish_reg message
    [Arguments]     ${message}
    Element Should Contain     ${REG_DONE_MSG_LOCATOR}      ${message}

Verify finsih_error message
    [Arguments]     ${error_msg}
    Element Should Contain        ${REG_ERROR_MSG_LOCATOR}      ${error_msg}