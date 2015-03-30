require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     product=Product.new
     product.save    
   end
end
