#language: pt

Funcionalidade: Login 
    Para que eu possa fazer compras dos itens clássicos 
    Sendo um usuário cadastro
    Posso me autenticar pela tela de Login

    Cenario: Usuário logado

    Dado que acesso a tela de login 
    Quando eu faço login com "tony@stark.com" e "pass123"
    Então posso ver a tela minha conta