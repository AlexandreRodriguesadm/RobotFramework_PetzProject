*** Comments ***
Documentation
... Suite with common system features
... Resources used in all scenarios

*** Settings ***
Library     Browser
Library     FakerLibrary    locale=pt_BR

*** Keywords ***
Open Website
    Set Browser Timeout     30
    New Persistent Context    headless=false    ignoreHTTPSErrors=true   viewport={'width': 1920, 'height': 1080}
    Go To   ${url}

Close Website
    Take Screenshot
    Close Browser