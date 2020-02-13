Dado("que acesso a tela de login") do
  @screen.generalFunctions.clickAccount()
end


Quando("eu faço login com {string} e {string}") do |email, pass|
@screen.generalFunctions.login(email,pass)
end

Quando("logo sem sucesso {int} vezes") do |tentativas|
tentativas.times do
  steps %(
      Quando eu faço login com "tony@stark.com" e "123pass"
  )
  expect(@screen.generalFunctions.popup.displayed?).to be true
  back
end
end

Quando("faço login na última tentativa") do
steps %(
    Quando eu faço login com "tony@stark.com" e "pass123"
)
end

Então("posso ver a tela minha conta") do
sleep 2
find_element(id:"qaninja.com.pixel:id/accountButt").click
sleep 2
expect(@screen.my_account.view.displayed?).to be true
end

Então("devo ver {string} como popup") do |mensagem_esperada|
expect(@screen.generalFunctions.popup.text).to eql mensagem_esperada
end