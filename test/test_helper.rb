ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
  

class ActiveSupport::TestCase
  include Devise::TestHelpers
  Product.create(name: "Lenovo",price: 6500,info: "Android 4.2 memory 8gb  camera 8mpx")
Product.create(name: "Samsung",price: 3500,info: "Android 4.2 memory 4gb  camera 3mpx")
Product.create(name: "Sony",price: 4800,info: "Android 4.1 memory 8gb  camera 8mpx")
Product.create(name: "LG",price: 4950,info: "Android 4.3 memory 8gb  camera 12mpx")
Product.create(name: "HTC",price: 4700,info: "Android 4.5 memory 8gb  camera 12mpx")
end
