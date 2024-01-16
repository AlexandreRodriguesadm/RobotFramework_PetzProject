*** Comments ***
Documentation
...Suite with search tests

*** Settings ***
Resource         ../main/support/base.robot
Resource         ../main/pages/search.robot

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***


Test Case 001: validate search button
    [Documentation]     This test make a validate of search button
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Whiskas Sachê  
    Then i must validate a search button

Test Case 002: validate searchbar
    [Documentation]     This test make a validate of searchbar
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Whiskas Sachê  
    Then i must validate a searchbar

Test Case 003: validate search of product
    [Documentation]     This test make a validate search of product
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Whiskas Sachê  
    Then i must validate that the search result is as expected
    
Test Case 004: product search
    [Documentation]     This test make a product search
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Whiskas Sachê  
    Then i must validate that the search result is as expected