# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def open(name)
  File.open(Rails.root.join("public/product/#{name}.jpg")) || nil
end
Product.create(name: "Lenovo",price: 6500,info: "Android 4.2 memory 8gb  camera 8mpx",image: open("Lenovo"))
Product.create(name: "Samsung",price: 3500,info: "Android 4.2 memory 4gb  camera 3mpx",image: open("Samsung"))
Product.create(name: "Sony",price: 4800,info: "Android 4.1 memory 8gb  camera 8mpx",image: open("Sony"))
Product.create(name: "LG",price: 4950,info: "Android 4.3 memory 8gb  camera 12mpx",image: open("LG"))
Product.create(name: "HTC",price: 4700,info: "Android 4.5 memory 8gb  camera 12mpx",image: open("HTC"))
