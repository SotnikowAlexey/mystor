class Product < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  def update_product(id,params)
    attribut=[]
    Product.find(id).attributes.each{|k,v| attribut << k}
    params.split(',').each do |e|
      params_new={}
      el=e.split('=')  
      params_new[el[0]]=el[1]
        if attribut.detect {|e| e==el[0]}
          Product.update(id, params_new)
        end
    end          
  end         
end
