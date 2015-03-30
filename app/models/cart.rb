class Cart 
  def show(session)
    if session
      cart=[]
      session.each do |e|
        cart << Product.find_by_id(e)
      end 
    end
    cart
  end   
  def sub_total(prod=0)
    @sub=0
    if prod!=0
      prod.each do |e|
          @sub=@sub+e['price']
      end
    end
    @sub
  end  
  def delete_cart_id(cart,id)
    delet_i=0
    for i in(0..cart.size-1)
      if cart[i]==id
        delet_i=i
        break
      end
    end
    cart.delete_at(delet_i)
      if cart==[]
        cart=nil
      end
    cart
  end
  def cart(name,session)
    product=Product.find_by_id(name)
    unless session
      session = []
      session << product['id']
    else
      session << product['id']
    end
  end
end
