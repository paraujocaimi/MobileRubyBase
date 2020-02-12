class Login
  def popup
    find_element(id: "android:id/message")
  end
end

class MyAccount
  def view
    find_element(id: "qaninja.com.pixel:id/account")
  end
end

