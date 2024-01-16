*** Comments ***
Documentation
... Suite with system cart resources

*** Settings ***
Resource    ../support/base.robot

*** Variables ***
${productCatSand}             //p[@class="ptz-card-label-left"][contains(.,'Areia Higiênica Petz Grãos Finos para Gatos')]
${validateProduct}            //h1[@itemprop='name']
${addProductOnTheCar}         //button[@class="btn btn-add-to-cart"]
${cartValidate}               //h1[@class="title"]
${productValidateOnTheCar}    (//div[contains(.,'Areia Higiênica Petz Grãos Finos para Gatos')])[14]
${cepSearch}                  //input[@id='cepSearch']
${economicShipping}           (//span[contains(@class,'check')])[1]
${payments}                   //button[@type='button'][contains(.,'Ir para pagamento')]
${removeProduct}              //img[contains(@alt,'trash-icon')]
${confirmRemoveAlert}         //button[contains(.,'Excluir')]
${validateEmptyCart}          //h1[contains(.,'Sua sacola está vazia')]

*** Keywords ***

And click on the product and add it to the cart
    # Click                      ${productCatSand}
    Wait for Elements State    ${validateProduct}
    Click                      ${addProductOnTheCar}

Then i must validate if product has added with success
    Wait for Elements State    ${cartValidate}
    Wait for Elements State    ${productValidateOnTheCar}
    
And fill the CEP
    [Arguments]     ${product}
    Validate and Fill Text      ${cepSearch}    ${product}

Then choose the shipping type and click on payments
    Click                       ${economicShipping}
    Click                       ${payments}

Then i remove product of the cart and validate cart
    Click                       ${removeProduct}
    Click                       ${confirmRemoveAlert}
    Wait for Elements State     ${validateEmptyCart}
    Sleep                       10