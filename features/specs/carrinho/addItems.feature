#language: pt

Funcionalidade: Adicionar item ao carrinho
    Para que eu possa comprar jogos clássicos na lojinha
    Sendo um usuário cadastrado
    Posso adicionar itens no carrinho

    Background: Login
        Dado que acesso a tela de login
        Quando eu faço login com "tony@stark.com" e "pass123"
        Então posso ver a tela minha conta
        
    @add_item
    Cenario: Usuario logado adicionado jogo

       Dado que eu quero comprar "F-Zero" do "Super Nintendo"
       Quando eu adiciono este item ao carrinho
       Então deve ver o alerta "Você adicionou F-Zero ao seu carrinho!"