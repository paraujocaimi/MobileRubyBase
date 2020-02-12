
require_relative "android/screens"
require_relative "utils/utils"


class DroidScreens
  attr_accessor :button, :text, :login, :my_account

  def initialize
    @button = Button.new
    @text = Text.new
    @login = Login.new
    @my_account = MyAccount.new
  end
end
