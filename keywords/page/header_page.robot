*** Settings ***
Resource        ../common/common.robot 
Resource        ../locator/header_page.robot

*** Keywords ***
Verify the user is not loged in
    Wait Until Page Contains             ${LOGIN_TEXT}                 timeout=${TIME_OUT}     
Log in user
    Wait Until Element Is Visible        ${HEADER_LOGIN_BUTTON}        timeout=${TIME_OUT}   
    Click Element                        ${HEADER_LOGIN_BUTTON} 
    Input Text                           ${HEADER_INPUT_EMAIL}         ${USER_NAME}
    Input Text                           ${HEADER_INPUT_PASS}          ${USER_PASS}
    Click Element                        ${HEADER_SUBMIT_BUTTON} 
Verify log in successful
    Wait Until Page Contains             ${HI_TEXT}                    timeout=${TIME_OUT}
Search for items 
    Input Text                           ${HEADER_INPUT_SEARCH}        ${SEARCH_TEXT}
    Sleep                                ${TIME_SLEEP}
    Press Keys                           ${HEADER_SEARCH}              RETURN

