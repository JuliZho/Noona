*** Settings ***
Documentation  Definition of XPATH variables
*** Variables ***
# Variable name:
# First part of the name is page name,
# Next part of the word is Modal or the the use case.

# Xpaths within Login page
${LOGIN_EMAIL_INPUT}                          //*[@id="email"]
${LOGIN_PASSWORD_INPUT}                       //*[@id="pwd"]
${LOGIN_LOG_IN_BUTTON}                        /html/body/app-root/div/div[1]/div/div/div/nh-login-page/div/div[2]/nh-email-and-password/nh-login-section/div/div/div[2]/div/fieldset/div/form/div[3]/div/ds-button/button
${LOGIN_ERROR_MESSAGE}                        //*[@id="login-form-error"]
${LOGIN_PROBLEM_LOGGING_IN_LINK}              /html/body/app-root/div/div[1]/div/div/div/nh-login-page/div/div[2]/nh-email-and-password/nh-login-section/div/div/div[2]/div/fieldset/div/form/div[4]/div[1]/ds-button/button
${LOGIN_DON'T_HAVE_AN_ACCOUNT_LINK}           /html/body/app-root/div/div[1]/div/div/div/nh-login-page/div/div[2]/nh-email-and-password/nh-login-section/div/div/div[2]/div/fieldset/div/form/div[4]/div[2]/ds-button/button
${LOGIN_LANGUAGES_DROPDOWN}                   //*[@id="locale"]
${LANGUAGE_SUOMI}                             /html/body/app-root/div/div[1]/div/div/div/nh-login-page/div/div[1]/nh-locale/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]/span

#Xpaths within "Problems logging in?" modal
${LOGIN_MODAL_EMAIL_INPUT}                    //*[@id="password-reset-email"]
${LOGIN_MODAL_SEND_ME_INSTRUCTIONS_BUTTON}    /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/nh-password-reset-modal/div[3]/div/ds-button[2]/button
${LOGIN_MODAL_CLOSE_BUTTON}                   /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/nh-password-reset-modal/div[3]/ds-button/button
${LOGIN_MODAL_HEADER_TEXT}                    /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/nh-password-reset-modal/div[1]/h4
${LOGIN_MODAL_BODY_TEXT}                      /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/nh-password-reset-modal/div[2]/div

#Xpaths within "Don't have an account?" modal
${LOGIN_MODAL_NO_ACCOUNT_HEADER_TEXT}         //*[@id="dialog-title"]
${LOGIN_MODAL_NO_ACCOUNT_BODY_TEXT}           /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/ng-component/div/div[2]/div[1]
${LOGIN_MODAL_NO_ACCOUNT_BODY_TEXT}           /html/body/app-root/div/div[2]/modal-placeholder/base-modal-component/div/div[2]/div/div/div[2]/nh-privacy-policy/div/div[1]/nh-markdown-renderer/div
${LOGIN_MODAL_NO_ACCOUNT_CLOSE_BUTTON}        /html/body/div/div[2]/div/nh-overlay/div/div[2]/nh-dynamic/ng-component/div/div[2]/div[2]/div/div/ds-button/button

#Xpaths within "Privacy statement?" modal
${LOGIN_PRIVACY_STATEMENT_LINK}               /html/body/app-root/div/div[1]/div/div/div/nh-login-page/div/div[4]/nh-ce-mark/div/div[1]/ds-button/button
${LOGIN_MODAL_PRIVACY_STATEMENT_BODY_TEXT}    //*[@id="showdown"]
