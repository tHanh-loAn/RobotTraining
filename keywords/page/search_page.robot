*** Keywords ***
Verify Search page visible
    Wait Until Page Contains    ${search_page_translation.search_results_text}    timeout=${TIME_OUT}
    Sleep    ${TIME_SLEEP}

Select the delivery method
    Click Element    ${SEARCH_PAGE_DELIVERY_CHECK_BOX}

Select the item of delivery method
#    Select From List By Index       ${SEARCH_PAGE_LIST_DELIVERY_METHOD}        1
    [Arguments]    ${delivery_method_arg}
    ${locator}    String.Format String    ${delivery_method_locator}    delivery_method=${delivery_method_arg}
    Click Element    ${locator}
    Sleep    ${TIME_SLEEP}

Select first product in list 
    Click Element    ${SEARCH_PAGE_ITEM_0}
    Sleep    ${TIME_SLEEP}