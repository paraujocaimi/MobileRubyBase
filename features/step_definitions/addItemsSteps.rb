Dado("que eu quero comprar {string} do {string}") do |game, category|
  @screen.button.findButtonWithTextAndClick("qaninja.com.pixel:id/cCatNameTxt", category)
  @screen.button.findButtonWithTextAndClick("qaninja.com.pixel:id/cpProdNameTxt", game)
end

Quando("eu adiciono este item ao carrinho") do
@screen.generalFunctions.add_to_cart()
end

Quando("preciso fazer login para adicionar o produto") do
@screen.generalFunctions.accept_popup()
@screen.generalFunctions.login(@user[:email], @user[:pass])
steps %(
  Quando eu adiciono este item ao carrinho
) 
end

Então("devo ver o alerta {string}") do |mensagem_esperada|
expect(@screen.generalFunctions.popup.text).to eql mensagem_esperada
end