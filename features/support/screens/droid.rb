
require_relative "android/screens"
require_relative "utils/utils"


class DroidScreens
  attr_accessor :button, :text, :login,:pop_up, :my_account

  def initialize
    @button = Button.new
    @text = Text.new
    @login = Login.new
    @pop_up = PopUp.new
    @my_account = MyAccount.new
  end
end
