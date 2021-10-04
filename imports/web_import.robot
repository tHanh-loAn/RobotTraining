*** Settings ***
#library
Library    SeleniumLibrary
Library    String

#variables
Resource    ${CURDIR}/../variables/${env}/test_data.robot
Variables    ${CURDIR}/../variables/${env}/data_test.yaml

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#page
Resource    ${CURDIR}/../keywords/page/header_page.robot
Resource    ${CURDIR}/../keywords/page/search_page.robot
Resource    ${CURDIR}/../keywords/page/item_page.robot

#locator
Resource    ${CURDIR}/../keywords/locator/header_page.robot
Resource    ${CURDIR}/../keywords/locator/search_page.robot
Resource    ${CURDIR}/../keywords/locator/item_page.robot

#translation
Variables    ${CURDIR}/../translation/${language}/translation.yaml