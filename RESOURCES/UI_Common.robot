*** Settings ***
Library  SeleniumLibrary
Library  PrepareData.py
Library  BuiltIn
Resource  XPATH_variables.robot

Documentation  UI common keywords
*** Variables ***
${LOGIN URL}       https://demo.patient.noonatest.com/patient/#/login

*** Keywords ***
Begin Web Test
   [Arguments]  ${BROWSER}
   Open Browser  ${LOGIN URL}  ${BROWSER}  service_log_path=${{os.path.devnull}}
   Wait Until Page Contains  Welcome to Noona

End Test
  Close Browser

User logs in with invalid data
   ${email}=  PrepareData.new_user_data_username
   ${user_password}=  PrepareData.new_user_data_password
   PrepareData.add used
   ${incorrect_username_or_password_error_text_file}=    PrepareData.incorrect_username_or_password_error_text
   Wait Until Element Is Visible    xpath=${LOGIN_EMAIL_INPUT}
   Wait Until Element Is Visible    xpath=${LOGIN_PASSWORD_INPUT}
   Wait Until Element Is Visible    xpath=${LOGIN_LOG_IN_BUTTON}
   Input Text     xpath=${LOGIN_EMAIL_INPUT}       ${email}
   Input Text     xpath=${LOGIN_PASSWORD_INPUT}    ${user_password}
   Click Button   xpath=${LOGIN_LOG_IN_BUTTON}
   Wait Until Page Contains Element    xpath=${LOGIN_ERROR_MESSAGE}
   ${incorrect_username_or_password_error_text_web}=  Get Text    xpath=${LOGIN_ERROR_MESSAGE}
   Should Be Equal As Strings    ${incorrect_username_or_password_error_text_web}      ${incorrect_username_or_password_error_text_file}

User reports problem with logging in
   ${email}=  PrepareData.new_user_data_username
   PrepareData.add used
   ${problems_logging_in_body_text_file}=    PrepareData.problems_logging_in_body_text
   ${problems_logging_in_header_text_file}=  PrepareData.problems_logging_in_header_text
   Click Button  xpath=${LOGIN_PROBLEM_LOGGING_IN_LINK}
   Input Text    xpath=${LOGIN_MODAL_EMAIL_INPUT}  ${email}
   Click Button  xpath=${LOGIN_MODAL_SEND_ME_INSTRUCTIONS_BUTTON}
   Wait Until Element Contains    xpath=${LOGIN_MODAL_HEADER_TEXT}    ${problems_logging_in_header_text_file}
   Wait Until Element Contains    xpath=${LOGIN_MODAL_BODY_TEXT}    ${problems_logging_in_body_text_file}
   Click Button    xpath=${LOGIN_MODAL_CLOSE_BUTTON}

User clicks the "DON'T HAVE AN ACCOUNT?" link and views information
   Click Button    xpath=${LOGIN_DON'T_HAVE_AN_ACCOUNT_LINK}
   ${dont_have_an_account_header_text_file}=    PrepareData.dont_have_an_account_header_text
   ${dont_have_an_account_body_text_file}=    PrepareData.dont_have_an_account_body_text
   Wait Until Element Is Visible    xpath=${LOGIN_MODAL_NO_ACCOUNT_HEADER_TEXT}
   Wait Until Element Is Visible    xpath=${LOGIN_MODAL_NO_ACCOUNT_BODY_TEXT}
   ${dont_have_an_account_header_text_web}=    Get Text    xpath=${LOGIN_MODAL_NO_ACCOUNT_HEADER_TEXT}
   ${dont_have_an_account_body_text_web}=      Get Text    xpath=${LOGIN_MODAL_NO_ACCOUNT_BODY_TEXT}
   Should Be Equal As Strings  ${dont_have_an_account_header_text_web}    ${dont_have_an_account_header_text_file}
   Should Be Equal As Strings   ${dont_have_an_account_body_text_web}      ${dont_have_an_account_body_text_file}
   Click Button    xpath=${LOGIN_MODAL_NO_ACCOUNT_CLOSE_BUTTON}

User clicks the "PRIVACY STATEMENT" link and views information
   Click Button    xpath=${LOGIN_PRIVACY_STATEMENT_LINK}
   ${privacy_statement_body_text_file}=    PrepareData.privacy_statement_body_text
   Wait Until Element Is Visible    xpath=${LOGIN_MODAL_PRIVACY_STATEMENT_BODY_TEXT}
   ${privacy_statement_body_text_web}=     Get Text    xpath=${LOGIN_MODAL_PRIVACY_STATEMENT_BODY_TEXT}
   Should Be Equal As Strings     ${privacy_statement_body_text_file}      ${privacy_statement_body_text_web}

User changes the Language
   [Arguments]  ${LANGUAGE}
   click element    xpath=${LOGIN_LANGUAGES_DROPDOWN}
   click element    xpath=${LANGUAGE}

User logs in with invalid data FI
   ${email}=  PrepareData.new_user_data_username
   ${user_password}=  PrepareData.new_user_data_password
   PrepareData.add used
   ${incorrect_username_or_password_error_text_file_FI}=     PrepareData.incorrect_username_or_password_error_text_suomi
   Wait Until Element Is Visible    xpath=${LOGIN_EMAIL_INPUT}
   Wait Until Element Is Visible    xpath=${LOGIN_PASSWORD_INPUT}
   Wait Until Element Is Visible    xpath=${LOGIN_LOG_IN_BUTTON}
   Input Text     xpath=${LOGIN_EMAIL_INPUT}    ${email}
   Input Text     xpath=${LOGIN_PASSWORD_INPUT}    ${user_password}
   Click Button   xpath=${LOGIN_LOG_IN_BUTTON}
   Wait Until Page Contains Element    xpath=${LOGIN_ERROR_MESSAGE}
   ${incorrect_username_or_password_error_text_web_FI}=  Get Text    xpath=${LOGIN_ERROR_MESSAGE}
   Should Be Equal As Strings    ${incorrect_username_or_password_error_text_web_FI}      ${incorrect_username_or_password_error_text_file_FI}