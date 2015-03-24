class CartsController < ApplicationController
  def add
    case params['name'] 
      when 'delet'
        session[:cart]=nil
        redirect_to '/'
      when 'delet_product'
        cart_new=session[:cart].split(',')
        delet_i=0
        for i in(0..cart_new.size-1)
          if cart_new[i]==params['product']
            delet_i=i
            break
          end
        end
        cart_new.delete_at(delet_i)
        session[:cart]=''         
        cart_new.each {|e| session[:cart] << e.to_s+','}
        redirect_to '/cart'
      else
        unless session[:cart]
          session[:cart] = params['name']+'-'+ params['price']+','
        else
          session[:cart] << params['name']+'-'+ params['price']+','
        end
        redirect_to '/'
    end 
  end     
  def show
    if session[:cart]
      @cart=session[:cart].split(',')
    end
  end
end
