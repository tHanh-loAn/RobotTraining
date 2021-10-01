*** Settings ***
Resource        ../common/common.robot
Resource        ../locator/item_page.robot

*** Keywords ***
Click the add to cart button
    Click Element                        ${ITEM_PAGE_ADD_CART_BUTTON}
    Sleep                                ${TIME_SLEEP}