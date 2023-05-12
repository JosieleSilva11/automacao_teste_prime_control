*** Settings ***
Library     Browser 
Library    FakerLibrary
Library    Dialogs
Library         BuiltIn



*** Variables ***
${BROWSER}                chromium
${HEADLESS}               ${false}
${URL}                    https://phptravels.com/demo/


    
*** Keywords ***
Abrir navegador 
    New Browser    browser=${BROWSER}
    ...             headless=${HEADLESS}
    
    New Context    viewport={'width': 1200, 'height': 800}

    New Page        url=${URL}


   

