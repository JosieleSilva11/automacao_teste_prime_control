*** Settings ***
Resource        ../resources/phptravels.resource

*** Keywords ***   
Preencher campos obrigatorios  
    Fill Text    css=input[name='first_name']     Priemiro nome
    Fill Text    css=input[name='last_name']      Ultimo nome
    ${email}    FakerLibrary.Email
    Fill Text    css=input[name='email']      ${email}
    Fill Text    css=input[name='business_name']      teste
    ${numero}    Get Text    css=span[id='numb1'] 
    ${numero1}    Get Text    css=span[id='numb2'] 
    ${soma}   Evaluate  ${numero} + ${numero1}  
    Fill Text    css=input[id='number']      ${soma}
 

Clicar no botao
    Click       css=button[id='demo'] 

Validar mensagem
    ${texto}     Get Text    //strong[contains(text(),'Thank you!')]
    ${trimmed_text}    Set Variable    ${texto.strip()}
    Should Be Equal As Strings    ${trimmed_text}     Thank you!
    Take Screenshot

Prencher alguns campos
    Fill Text    css=input[name='last_name']      Ultimo nome
    Fill Text    css=input[name='business_name']      teste
    ${numero}    Get Text    css=span[id='numb1'] 
    ${numero1}    Get Text    css=span[id='numb2'] 
    ${soma}   Evaluate  ${numero} + ${numero1}  
    Fill Text    css=input[id='number']      ${soma}  

Validar mensagem alerta
    ${promise} =         Promise To    Wait For Alert    action=accept
    Click              css=button[id='demo']
    ${text} =            Wait For      ${promise}
    Should Be Equal      ${text}         Please type your first name   
    Take Screenshot
   
    