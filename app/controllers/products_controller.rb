class ProductsController < ApplicationController
    
    def index
       @catagories = Product.find(10) 
       @sale = Product.find(4)
       @product = Product.find(1)
    end 

    def product
        @products = Product.all.paginate(page: params[:page], per_page: 10)
    end

    def product_detail
        @product = Product.find(params[:id])
        @user = current_user
    end

    def catagory
       @products = Product.where(:Catagory => "Electronics" )
    end

    def create
        @products = Product.new(params[:products])
        if @products.save
         redirect_to :action => 'product' 
        end
    end
    
end
