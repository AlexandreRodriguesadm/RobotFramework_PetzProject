*** Comments ***
Documentation
...Suite with cart tests

*** Settings ***
Resource         ../main/support/base.robot
Resource         ../main/pages/cart.robot

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***

Test Case 001: add products on the car - i must validate if product has added with success
    [Documentation]     This test validates whether the product was
    ...                 added successfully in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Areia Higiênica Petz Grãos Finos para Gatos  
    And click on the product and add it to the cart
    Then i must validate if product has added with success


Test Case 002: add products on the car - click in payments
    [Documentation]     This test make a click in the
    ...                 payments in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Areia Higiênica Petz Grãos Finos para Gatos
    And click on the product and add it to the cart
    And fill the CEP                                                01502-001
    Then choose the shipping type and click on payments
    
Test Case 003: add products on the car - remove products
    [Documentation]     This test add and remove product of the car
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                                            Pet Shop: Petz o maior pet shop do Brasil. 
    When in the search bar i search a product                       Areia Higiênica Petz Grãos Finos para Gatos  
    And click on the product and add it to the cart
    Then i remove product of the cart and validate cart