class ProductsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :ensure_admin!, except: [:index, :show]
  def index
    @products=Product.paginate(:page => params[:page], :per_page => 2)
  end
  def show
    @product=Product.find_by_id(params["name"])
  end
  def create
    Product.create(name: params[:name],price: params[:price],info: params[:info])
    redirect_to '/'
  end
  def destroy
    Product.delete(params['id_product'])
    redirect_to '/admin'
  end
  def update
    Product.new.update_product(params[:id_product],params[:up_product])
    redirect_to '/admin'
  end
end

