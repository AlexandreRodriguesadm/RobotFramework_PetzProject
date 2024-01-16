*** Comments ***
Documentation
... Suite with base system features
... Resources used in all scenarios

*** Settings ***
Library     Browser
Resource    commom-resources.robot

*** Variables ***
${url}                   https://www.petz.com.br
${closePopup}            //button[@class="ab-close-button"]
${emailTextField}        //input[@placeholder="Digite seu e-mail ou CPF/CNPJ"]
${passwordTextfield}     //input[@placeholder="Sua senha"]
${submit}                //button[@class="ptz-btn ptz-btn-light-primary ptz-btn-md-full-width ptz-btn-left"]
${homeLoggedValidate}    //span[@class="ptz-header-profile-button-content-logged"][text()='Olá, teste.']
${loginMenu}             //span[@class="ptz-header-profile-button-content-login"]
${loginEnterMenu}        //button[@class="ptz-btn ptz-btn-light-primary ptz-btn-lg ptz-btn-left"]
${searchBar}             //input[@class="ptz-input ptz-input-md ptz-input-with-icon-right ptz-input-with-icon-md ptz-input-with-icon ptz-input-boxed ptz-input-boxed-md ptz-input-boxed-resting"]
${searchBarButton}       //i[@class="ds-icon-line ds-search ptz-icon ptz-icon-lg ptz-icon-neutral-dark"]
*** Keywords ***

Given im on the site
    [Arguments]                   ${siteTitle}
    ${title}=                     Get Title            
    Should Be Equal As Strings    ${title}             ${siteTitle}
    Click                         ${closePopup}

When in the search bar i search a product
    [Arguments]               ${product}
    Validate and Fill Text    ${searchBar}    ${product}
    Click                     ${searchBarButton}

When accessing the website login page
    [Arguments]      ${email}    ${password}
    Click                        ${loginMenu}
    Click                        ${loginEnterMenu}    
    Fill in Login    ${email}    ${password}   
 
Fill in Login
    [Arguments]                ${email}                 ${password}     
    Validate and Fill Text     ${emailTextField}        ${email}
    Validate and Fill Text     ${passwordTextfield}     ${password}
    Sleep                      2
    Validate and Click         ${submit}


# Filling login
# Quando inserir dados validos
    # Run Keyword    Fill in Login    ${emailTextfield}    ${email}    ${password}

Fill in Registration
    [Arguments]                ${firstNameTextField}    ${firstName}    ${lastNameTextField}    ${lastName}    ${emailTextField}    ${email}    ${passwordTextField}    ${password}    ${registerButton}
    Wait for Elements State    ${firstNameTextField}
    Fill Text                  ${firstNameTextField}    ${firstName}
    Fill Text                  ${lastNameTextField}     ${lastName}
    Fill Text                  ${emailTextField}        ${email}
    Fill Text                  ${passwordTextField}     ${password}
    Click                      ${registerButton}

# Filling Registration
# Quando inserir dados validos no cadastro
#    ${firstName}    FakerLibrary.Name
#    ${lastName}     FakerLibrary.Name
#    ${email}        FakerLibrary.Email
#    ${password}     FakerLibrary.Password
#    Run Keyword     Fill in registration     ${firstNameTextField}    ${firstName}    ${lastNameTextField}    ${lastName}    ${emailTextField}    ${email}    ${passwordTextField}    ${password}    ${registerButton}


Validate and Fill Text
    [Arguments]                ${selector}    ${text}
    Wait for Elements State    ${selector}    timeout=30 s
    Fill Text                  ${selector}    ${text}

# Validating and typing texts
    # Validate And Fill Text  ${emailTextfield}  teste
    # Validate And Fill Text  ${passwordTextfield}  teste

Validate and Click
    [Arguments]                ${selector}
    Wait for Elements State    ${selector}    timeout=30 s
    Click                      ${selector}

# Validating and Click
    # Validate And Click       ${submit}

Validate Text on Screen
    [Arguments]       ${selector}    ${text}
    ${get_text}=      Get Text       ${selector}
    Should Contain    ${get_text}    ${text}