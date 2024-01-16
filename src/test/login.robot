*** Comments ***
Documentation
...Suite with login tests

*** Settings ***
Resource         ../main/support/base.robot
Resource         ../main/pages/login.robot

Test Setup       Open Website
Test Teardown    Close Website

*** Test Cases ***
Test Case 001: login successfully
    [Documentation]     This test make a login with success
    ...                 in the site: petz.com.br
    [Tags]              success
    Given im on the site                         Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page        263.390.900-01      123456@Abc 
    Then i must login successfully              

Test Case 002: unsuccessfully login - invalid email
    [Documentation]     This test make a unsuccessfully login
    ...                 in the site: petz.com.br with invalid email
    [Tags]              unsuccess
    Given im on the site                                 Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page                alexandre.outlook.com      123456@Abc
    Then i must receive the email alert               

Test Case 003: unsuccessfully login - invalid CPF
    [Documentation]     This test make a unsuccessfully login
    ...                 in the site: petz.com.br with invalid CPF
    [Tags]              unsuccess
    Given im on the site                                 Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page                4142141     123456@Abc     
    Then i must receive the CPF alert

Test Case 004: unsuccessfully login - invalid CPF
    [Documentation]     This test make a unsuccessfully login
    ...                 in the site: petz.com.br with invalid CNPJ
    [Tags]              unsuccess
    Given im on the site                                 Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page                14.175.236/5411-74     123456@Abc     
    Then i must receive the CNPJ alert

Test Case 005: unsuccessfully login - invalid password
    [Documentation]     This test make a unsuccessfully login
    ...                 in the site: petz.com.br with invalid password
    [Tags]              unsuccess
    Given im on the site                                 Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page                263.390.900-01     1234     
    Then i must receive the password alert

Test Case 006: show password
    [Documentation]     This test show a password
    ...                 in the site: petz.com.br
    [Tags]              unsuccess
    Given im on the site                                 Pet Shop: Petz o maior pet shop do Brasil. 
    When accessing the website login page                263.390.900-01     1234     
    And click on the “show password” eye icon 
    Then i must validate that my password was shown
