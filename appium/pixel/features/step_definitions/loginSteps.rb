Dado("que acesso a tela de login") do
    find_element(id:"qaninja.com.pixel:id/accountButt").click
  end
  
Quando("eu faço login com {string} e {string}") do |email, senha|
    find_element(id:"qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id:"qaninja.com.pixel:id/passwordTxt").send_keys(senha)
    find_element(id:"qaninja.com.pixel:id/loginButt").click
end
  
Então("posso ver a tela minha conta") do
    find_element(id:"qaninja.com.pixel:id/accountButt").click
    expect(find_element(id:"qaninja.com.pixel:id/account").displayed?).to be true
end