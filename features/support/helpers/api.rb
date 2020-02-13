require "httparty"

class PixelApi
  include HTTParty
  base_uri "https://ninjapixel-api.herokuapp.com"

  def get_user(email)
    self.class.get("/users/#{email}")
  end

  def get_cart(user_id)
    self.class.get("/cart/#{user_id}")
  end

  def delete_cart(cart_id)
    self.class.delete("/cart/#{cart_id}")
  end

  def remove_my_cart(email)
    user = get_user(email)
    user_id = user.parsed_response["objectId"]
    cart = get_cart(user_id)
    cart_list = cart.parsed_response["results"]
    delete_cart(cart_list.first["objectId"]) if cart_list.size > 0
  end
end

# pixel = PixelApi.new

# pixel.remove_my_cart("fernando@qaninja.io")