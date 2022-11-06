*** Settings ***
Resource  ../RESOURCES/UI_Common.robot

*** Variables ***
${BROWSER}        firefox
${LANGUAGE}     ${LANGUAGE_SUOMI}

*** Test Cases ***
User logs in with invalid data
    [Documentation]  Test case verifies the text of the error which appears after the user logs in with invalid data
     Begin Web Test  ${BROWSER}
     User logs in with invalid data
     End Test

User reports problem with logging in
    [Documentation]  Test case verifies the text in the modal after user reports problem with logging in
    Begin Web Test  ${BROWSER}
    User reports problem with logging in
    End Test

User clicks the "DON'T HAVE AN ACCOUNT?" link and views information
   [Documentation]  Test case verifies the text in the modal after user clicks the "DON'T HAVE AN ACCOUNT?" link
   Begin Web Test  ${BROWSER}
   User clicks the "DON'T HAVE AN ACCOUNT?" link and views information
   End Test

User clicks the "PRIVACY STATEMENT" link and views information
    [Documentation]  Test case verifies the text in the modal after user clicks the "PRIVACY STATEMENT" link
    Begin Web Test  ${BROWSER}
    User clicks the "PRIVACY STATEMENT" link and views information
    End Test

User changes the language and logs in with invalid data
    [Documentation]  Test case verifies the text of the error which appears after the user logs in with invalid data in the Finnish language UI
    Begin Web Test  ${BROWSER}
    User changes the Language    ${LANGUAGE}
    User logs in with invalid data FI
    End Test
