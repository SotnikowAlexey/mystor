ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
  
def open(name)
  File.open(Rails.root.join("public/product/#{name}.jpg")) || nil
end
Product.create(name: "Lenovo",price: 6500,info: "Android 4.2 memory 8gb  camera 8mpx",image: open("Lenovo"))
Product.create(name: "Samsung",price: 3500,info: "Android 4.2 memory 4gb  camera 3mpx",image: open("Samsung"))
Product.create(name: "Sony",price: 4800,info: "Android 4.1 memory 8gb  camera 8mpx",image: open("Sony"))
Product.create(name: "LG",price: 4950,info: "Android 4.3 memory 8gb  camera 12mpx",image: open("LG"))
Product.create(name: "HTC",price: 4700,info: "Android 4.5 memory 8gb  camera 12mpx",image: open("HTC"))
class ActiveSupport::TestCase
  include Devise::TestHelpers
end
