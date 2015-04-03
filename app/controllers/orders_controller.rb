class OrdersController < ApplicationController
  before_filter :authenticate_user!, except: [:create, :show]
  before_filter :ensure_admin!, except: [:create, :show]
  def create
    Order.new.add(current_user,params)
    if (params['name']!="") and (params['adress']!="")
      session[:cart]=nil
    end
  end
  def index
    @orders=Order.all
  end
  def show
    @orders=current_user.orders             
  end
  def destroy
    Order.delete(params['id_order'])
    redirect_to '/orders'
  end
end
