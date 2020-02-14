require_relative "android/screens"
require_relative "utils/generalElementActions.rb"
require_relative "../helpers/generalFunctions"


class DroidScreens
  attr_accessor :button, :text,:pop_up, :my_account,:generalFunctions

  def initialize
    @button = Button.new
    @text = Text.new
    @my_account = MyAccount.new
    @generalFunctions = GeneralFunctions.new
  end
end