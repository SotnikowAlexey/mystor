class User < ActiveRecord::Base
  has_many :orders
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, presence: true
  validates :password, presence: true
  def self.cart(id)
    @cart=''
      id.split(',').each do |e|       
        @cart << Product.find(e)['name'] + ','
      end
    @cart
  end
  def self.create_new(session,params)
    if User.create(name: params[:name],email: params[:email],password: params[:password]).valid?
      session=User.find_by_name(params[:name]).id
    else
      nil
    end
  end       
end
