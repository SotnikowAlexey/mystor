class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true  
end
