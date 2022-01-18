class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @pagy, @products = pagy(Product.order(created_at: :desc))
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.image.attach(params[:image]) if !@product.image.attached?
    
    respond_to do |format|
      if @product.save
        flash[:notice] = "Product has been created successfully."
        format.html { redirect_to product_path(@product) }
      else
        flash.now[:alert] = "Product has not been created successfully."
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        flash[:notice] = "Product updated successfully"
        format.html { redirect_to product_path(@product) }
      else
        flash.now[:notice] = "Product was not updated successfully"
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy 
    flash[:notice] = "Product has been deleted successfully"
    redirect_to products_url
  end
  
  


  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
