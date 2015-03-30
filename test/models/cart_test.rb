require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test " show " do
    a = Product.find(1,2)
    a << Product.find(2)
    assert_equal(Cart.new.show([1,2,2]),a) 
    assert_equal(Cart.new.show([]),[])
    assert_not_equal(Cart.new.show(['aajao','ggo',1,2]),Product.find(1,2))  
  end
  test " sub_total " do
    a = [Product.new(name: "Lenovo",price: 6500),Product.new(name: "Samsung",price: 3500)]
    assert_equal(Cart.new.sub_total(a),10000)   
  end
  test " delete_cart_id " do   
    assert_equal(Cart.new.delete_cart_id([1,2,3,4],3),[1,2,4]) 
    assert_equal(Cart.new.delete_cart_id([1,2,2,4],2),[1,2,4]) 
  end
  test " cart to session " do    
    assert_equal(session=Cart.new.cart(1,session),[1]) 
    assert_equal(session=Cart.new.cart(1,session),[1,1])
  end
  
end
