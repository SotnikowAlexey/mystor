class Order < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :adress, presence: true
  def self.add(user,params)
    if user
      user_new=User.find_by_id(user)
      user_new.orders.create(name: User.find_by_id(user)['name'],adress: params['adress'], cart: params['cart'], sub: params['sub'],date: Time.now)
    else
      Order.create(name: params['name'],adress: params['adress'], cart: params['cart'], sub: params['sub'])
    end
  end
end
