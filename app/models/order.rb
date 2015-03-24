class Order < ActiveRecord::Base
  validates :name, presence: true
  validates :adress, presence: true
end
