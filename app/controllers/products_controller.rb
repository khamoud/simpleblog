class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(params[:product])
  	if @product.save
  		redirect_to @product
  	else
  		render :new
  	end
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.updated_attributes
  		puts "congrats"
  	else
  		redirect_to 'index'
  	end
  end

  def destroy
  end
end
