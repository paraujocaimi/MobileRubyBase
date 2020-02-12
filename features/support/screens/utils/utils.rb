class Button
  def buttonClick(element_id)
    screenshot = driver.screenshot_as(:base64)
    # embed(screenshot, "image/png","Screenshot")
    find_element(id: element_id).click
  end

  def findButtonWithTextAndClick(element_id, text, upcase)
    upercase = upcase
    find_elements(id: element_id).text(text.upcase!).click if upercase.eql?(true)
    find_elements(id: element_id).text(text).click if upercase.eql?(false)
  end

end

class Text
  def inputText(element_id, text)
    find_element(id: element_id).send_keys(text)
    screenshot = driver.screenshot_as(:base64)
    # embed(screenshot, "image/png","Screenshot")
  end
end

class PopUp
  def popup
    find_element(id: "android:id/message")
  end
end



## Verificar por que não consigo verificar este tipo de validação
# class Validations
#   def getPopUpText(element_id, validatText)
#     expect(find_element(id: element_id).to eql validatText)
#     screenshot = driver.screenshot_as(:base64)
#     # embed(screenshot, "image/png","Screenshot")
#   end
#   def elementDisplayed(element_id)
#     expect(find_element(id: element_id).displayed?).to be true
#   end
# end