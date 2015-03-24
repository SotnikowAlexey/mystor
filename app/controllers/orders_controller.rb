class OrdersController < ApplicationController
  def new_order
    if session[:user]
      Order.create(name: session[:user],adress: params['adress'], cart: params['cart'], sub: params['sub'])
    else
      Order.create(name: params['name'],adress: params['adress'], cart: params['cart'], sub: params['sub'])
    end
    if (params['name']!="") and (params['adress']!="")
      session[:cart]=nil
    end
  end
end
