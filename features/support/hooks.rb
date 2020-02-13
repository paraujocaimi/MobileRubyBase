

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
end

Before("@login") do
  @user = { email: "paraujocaimi@gmail.com", pass: "pass123" }
  @screen.button.buttonClick("qaninja.com.pixel:id/accountButt")
  @screen.text.inputText("qaninja.com.pixel:id/usernameTxt", @user[:email])
  @screen.text.inputText("qaninja.com.pixel:id/passwordTxt", @user[:pass])
  @screen.button.buttonClick("qaninja.com.pixel:id/loginButt")
end

Before("@clean_cart") do
  @user = { email: "paraujocaimi@gmail.com", pass: "pass123" }
  PixelApi.new.remove_my_cart(@user[:email])
end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")
  driver.quit_driver
end
