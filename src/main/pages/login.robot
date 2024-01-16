*** Comments ***
Documentation
... Suite with system login resources

*** Settings ***
Resource    ../support/base.robot

*** Variables ***

${userBar}                  //span[@class="ptz-header-profile-button-content-logged"][contains(.,'Olá, teste')]
${alertEmailInvalid}        //p[@class="help is-danger"][contains(.,'E-mail inválido.')]
${alertCpfInvalid}          //p[@class="help is-danger"][contains(.,'CPF inválido')]
${alertCnpjInvalid}         //p[@class="help is-danger"][contains(.,'Dados incorretos!')]
${alertPasswordInvalid}     //p[@class="help is-danger"][contains(.,'Dados incorretos!')]
${showPasswordIcon}         //i[@class="mdi mdi-eye mdi-24px tx-default"]
${shownPassword}            //input[@placeholder="Sua senha"]
${shownPass}                1234
*** Keywords ***

Then i must login successfully
    Wait for Elements State    ${userBar}    timeout=30 s

Then i must receive the email alert
    Wait for Elements State    ${alertEmailInvalid}    timeout=30 s

Then i must receive the CPF alert
    Wait for Elements State    ${alertCpfInvalid}    timeout=30 s

Then i must receive the CNPJ alert
    Wait for Elements State    ${alertCnpjInvalid}    timeout=30 s

Then i must receive the password alert
    Wait for Elements State    ${alertPasswordInvalid}    timeout=30 s

And click on the “show password” eye icon 
    Click                      ${showPasswordIcon}

Then i must validate that my password was shown
    ${get_text}=      Get Text            ${shownPassword}
    Should Contain    ${get_text}         ${shownPass}
