*** Settings ***
Resource        ../common/common.robot
Resource        ../locator/search_page.robot

*** Keywords ***
Verify Search page visible
    Wait Until Page Contains        ${SEARCH_RESULTS}        timeout=${TIME_OUT}
    Sleep                           ${TIME_SLEEP}

Select the delivery method
    Click Element                   ${SEARCH_PAGE_DELIVERY_CHECK_BOX}

Select the item of delivery method by index
#    Select From List By Index       ${SEARCH_PAGE_LIST_DELIVERY_METHOD}        1
    Click Element                   ${SEARCH_PAGE_STANDARD_DELIVERY_ ITEM}
    Sleep                           ${TIME_SLEEP}

Select first product in list 
    Click Element                   ${SEARCH_PAGE_ITEM_0}
    Sleep                           ${TIME_SLEEP}