*** Settings ***
Resource        ../common/common.robot
Resource        ../locator/search_page.robot

*** Keywords ***
Verify Search page visible
    Wait Until Page Contains        ${SEARCH_RESULTS}        timeout=${TIME_OUT}
    Sleep                           ${TIME_SLEEP}

Select the delivery method
    Click Element                   ${SEARCH_PAGE_DELIVERY_CHECK_BOX}

Select the item of delivery method by item name
    [Arguments]                     ${locator_item}
    Click Element                   ${locator_item}
    Sleep                           ${TIME_SLEEP}

Select first product in list 
    Click Element                   ${SEARCH_PAGE_ITEM_0}
    Sleep                           ${TIME_SLEEP}