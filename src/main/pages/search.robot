*** Comments ***
Documentation
... Suite with system search resources

*** Settings ***
Resource    ../support/base.robot

*** Variables ***
${productValidate}          //p[@class="ptz-card-label-left"][contains(.,'Ração Úmida Whiskas Sachê Carne ao Molho para Gatos Adultos Castrados 85 g')]
${validateSearchProduct}    //div[@class="col-md-12"][contains(.,'Resultados para "Whiskas Sachê"')]
*** Keywords ***

Then i must validate that the search result is as expected
    # Click                      ${searchBarButton}
    Wait for Elements State    ${productValidate}
    Wait for Elements State    ${validateSearchProduct}


Then i must validate a search button
    Wait for Elements State    ${searchBarButton}

Then i must validate a searchbar
    Wait for Elements State    ${searchBar}
