class OrdersController < ApplicationController
  def create
    Order.add(session[:user],params)
    if (params['name']!="") and (params['adress']!="")
      session[:cart]=nil
    end
  end
  def index
    @orders=Order.all
  end
end
