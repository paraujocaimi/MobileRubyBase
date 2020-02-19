require 'report_builder'
require 'date'

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
  @path_screenshots = "report/screenshot"
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

# After execute all scenario will take a screenshot
After do |scenario|
  @cenario = scenario.feature.name
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")
  driver.quit_driver
end

#After with step will take a screenshot of page
AfterStep do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")
end

# https://github.com/rajatthareja/ReportBuilder
at_exit do

  @infos = {
    device: "Android",
    environment: "Dev",
    Data: Time.now.to_s,
    include_images:  true,
    voice_commands: true
  }

  ReportBuilder.configure do |config |
    config.input_path = 'report/json/cucumber.json'
    config.report_path = 'report/html/test_'
    config.report_types = [:html,:json,:pdf]
    config.report_title = 'Pixel App'
    config.additional_info = @infos
    config.color = "red"
  end
  ReportBuilder.build_report
end


