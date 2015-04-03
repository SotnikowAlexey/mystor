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
    Product.create(product_params)
    redirect_to '/'
  end
  def destroy
    Product.delete(params[:product][:id])
    redirect_to '/users/admin'
  end
  def update     
    Product.update(product_params)
    redirect_to '/users/admin'
  end
  def new
    @product=Product.new
  end
private
  def product_params
    params.require(:product).permit(:name, :price, :info, :image)
  end
end
