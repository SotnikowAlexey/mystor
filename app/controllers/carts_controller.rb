class CartsController < ApplicationController
  def create
    case params['name'] 
      when 'delet'
        session[:cart]=nil
        redirect_to '/'
      when 'delet_product'
        session[:cart]=Cart.delete_cart_id(session[:cart],session[:product])
        redirect_to '/carts'
      else
        session[:cart]=Cart.cart(params['name'],session[:cart])
        redirect_to '/'
    end 
  end     
  def index
    @cart=Cart.show(session[:cart])
  end
end
