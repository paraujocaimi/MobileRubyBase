Dado("que acesso a tela de login") do
    @screen.button.buttonClick("qaninja.com.pixel:id/accountButt")
  end
  

Quando("eu faço login com {string} e {string}") do |email, pass|
  @screen.text.inputText("qaninja.com.pixel:id/usernameTxt", email)
  @screen.text.inputText("qaninja.com.pixel:id/passwordTxt", pass)
  @screen.button.buttonClick("qaninja.com.pixel:id/loginButt")
end

Quando("logo sem sucesso {int} vezes") do |tentativas|
  tentativas.times do
    steps %(
        Quando eu faço login com "tony@stark.com" e "123pass"
    )
    expect(@screen.login.popup.displayed?).to be true
    back
  end
end

Quando("faço login na última tentativa") do
  steps %(
      Quando eu faço login com "tony@stark.com" e "pass123"
  )
end

Então("posso ver a tela minha conta") do
  @screen.button.buttonClick("qaninja.com.pixel:id/accountButt")
  expect(@screen.my_account.view.displayed?).to be true
end

Então("devo ver {string} como popup") do |mensagem_esperada|
  expect(@screen.login.popup.text).to eql mensagem_esperada
end