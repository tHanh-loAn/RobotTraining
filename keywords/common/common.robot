*** Keywords ***
Begin Web Test
    Open Browser    ${URL_WEB}    ${BROWSER}

End Web Test
    Close Browser

Insert test data
    Log    Insert insert data...

Clear test data
    Log    Clear data...

Wait until element is visible
    [Arguments]    ${locator}    ${timeout}=${TIME_OUT}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}

Clich Element
    [Arguments]    ${locator}    ${timeout}=${TIME_OUT}
    common.Wait until element is visible    ${locator}    ${timeout}
    SeleniumLibrary.Click Element    ${locator}
    