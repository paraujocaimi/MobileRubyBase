class GeneralFunctions
  
  def clickAccount() 
      find_element(id:"qaninja.com.pixel:id/accountButt").click
  end

  def myAccount()
    find_element(id: "qaninja.com.pixel:id/account").click
  end
  
  def login(user,pass)
      find_element(id:"qaninja.com.pixel:id/usernameTxt").send_keys(user)
      find_element(id:"qaninja.com.pixel:id/passwordTxt").send_keys(pass)
      find_element(id:"qaninja.com.pixel:id/loginButt").click
  end

  def add_to_cart()
      find_element(id:"qaninja.com.pixel:id/pdAddToCartButt").click
  end

  def popup
      find_element(id: "android:id/message")
    end
    
  def accept_popup
      find_element(id: "android:id/button1").click
    end
  
    def cancel_popup
      find_element(id: "android:id/button2").click
    end

end
