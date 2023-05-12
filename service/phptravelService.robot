*** Settings ***
Resource        ../resources/phptravels.resource
Resource        ../resources/keywords.robot

*** Keywords ***
Dado que o usuário esteja no site
    Abrir navegador

Quando preencher todos os dados com dados válidos
    Preencher campos obrigatorios

E clicar no botão Criar
   Clicar no botao     

Então o sistema deve apresentar a tela com a mensagem “Thank you!”
    Validar mensagem

###CT02
Quando preencher quase todos os campos
    Prencher alguns campos   
      
Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    Validar mensagem alerta   
        
        