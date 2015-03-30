class Order < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :adress, presence: true
  validates :cart, presence: true
  validates :sub, presence: true
  validates :date, presence: true
  def add(user=nil,params)
    if user
      user_new=User.find_by_id(user)
      user_new.orders.create(name: params['name'],adress: params['adress'], cart: params['cart'], sub: params['sub'],date: Time.now)
    else
      Order.create(name: params['name'],adress: params['adress'], cart: params['cart'], sub: params['sub'],date: Time.now)
    end
  end
  def cart_show(cart_user)
    cart_new=[]
    cart_user.delete('[] ').split(',').each do |e|
      cart_new << Product.find(e)
    end
    cart_new
  end
  def sub_orders(carts=Order.all)
    sub=0
    carts.each {|e| sub=sub+e.sub.to_f}
    sub
  end
end
