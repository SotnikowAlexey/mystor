require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test " find " do
    assert Product.find(2)   
   end
   test "the truth" do
    prod=Product.new
    assert !prod.save   
   end
   test "vaidates" do
     prod=Product.find(1)
     assert_not_equal(prod.save,true)
   end
   test "update_product" do
     Product.new.update_product(2,'name=Test, jjapj')
     assert_equal(Product.find(2).name,'Test')
   end  
end
