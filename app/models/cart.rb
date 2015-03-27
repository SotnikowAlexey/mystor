class Cart < ActiveRecord::Base
  def self.show(session)
    if session
      cart=[]
      cart1=session.split(',')
      cart1.each do |e|
        cart << Product.find_by_id(e)
      end 
    end
    cart
  end   
  def self.sub_total(prod=0)
    @sub=0
    if prod!=0
      prod.each do |e|
          @sub=@sub+e['price']
      end
    end
    @sub
  end  
  def self.delete_cart_id(cart,id)
    cart_new=cart.split(',')
    delet_i=0
    for i in(0..cart_new.size-1)
      if cart_new[i]==id
        delet_i=i
        break
      end
    end
    cart_new.delete_at(delet_i)
    session=''         
    cart_new.each {|e| session << e.to_s+','}
    session
  end
  def self.cart(name,session)
    product=Product.find_by_id(name)
    unless session
      session = product['id'].to_s+','
    else
      session << product['id'].to_s+','
    end
  end
end
