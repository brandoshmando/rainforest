class ProductsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy, :update ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])

    if current_user
      @reviews = @product.reviews
      @review = Review.new
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to product_path(@product), :notice => "Product Created!"
    else
      render :new
      flash.now[:alert] = "Product was not created for the following reasons"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])


    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render :edit
      flash.now[:alert] = "Your product was not updated..."
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end