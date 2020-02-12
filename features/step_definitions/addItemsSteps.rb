Dado("que eu quero comprar {string} do {string}") do |game, category|
    puts category
    @screen.button.findButtonWithTextAndClick("qaninja.com.pixel:id/cCatNameTxt", category, true)
    puts game
    @screen.button.findButtonWithTextAndClick("qaninja.com.pixel:id/cpProdNameTxt", game, false)
end
  
  Quando("eu adiciono este item ao carrinho") do
    @screen.button.buttonClick("qaninja.com.pixel:id/pdAddToCartButt")
  end
  
  Então("deve ver o alerta {string}") do |string|
    expect(@screen.pop_up.popup.text).to eql mensagem_esperada
  end