*** Settings ***
Resource        ../../service/phptravelService.robot

    
*** Test Case***
CT01 - Realizar cadastro com sucesso
    Dado que o usuário esteja no site    
    Quando preencher todos os dados com dados válidos
    E clicar no botão Criar
    Então o sistema deve apresentar a tela com a mensagem “Thank you!”


CT02 - Tentar fazer um cadastro sem preencher um campo obrigatório 
    Dado que o usuário esteja no site 
    Quando preencher quase todos os campos
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    