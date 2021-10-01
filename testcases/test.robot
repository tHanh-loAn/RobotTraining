*** Settings ***
Documentation          This is a example testing
Resource               ../keywords/common/common.robot
Resource               ../keywords/page/header_page.robot
Resource               ../keywords/page/search_page.robot
Resource               ../variables/user_data.robot
Resource               ../keywords/page/item_page.robot
Suite Setup            common.Begin Web Test
#Test Setup            common.Begin Web Test
#Test Teardown         common.End Web Test
Suite Teardown         common.End Web Test 


*** Test Cases ***
TC_1: Practice 1
    Check the log in successful
    Check the search successful
    Filter by delivery method
    Click first product in list 
    Click the add to cart button
    
*** Keywords ***
Check the log in successful
    header_page.Verify the user is not loged in
    header_page.Log in user
    header_page.Verify log in successful
Check the search successful
    header_page.Search for items 
    search_page.Verify Search page visible
Filter by delivery method
    search_page.Select the delivery method
    search_page.Select the item of delivery method by index
Click first product in list 
    search_page.Select first product in list 
Click the add to cart button 
    item_page.Click the add to cart button
  
