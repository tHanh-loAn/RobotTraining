*** Settings ***
Library        SeleniumLibrary
Resource       ../../variables/user_data.robot

*** Keywords ***
Begin Web Test
    Open Browser        ${URL_WEB}    ${BROWSER}

End Web Test
    Close Browser

Insert test data
    Log    Insert insert data...

Clear test data
    Log    Clear data...