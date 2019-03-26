require 'net/http'
require 'uri'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_cart

  def current_cart
    @current_cart ||= ShoppingCart.instance
  end
  helper_method :current_cart

  def apis
    apis = HTTParty.get('https://api.exchangeratesapi.io/latest?symbols=USD,GBP',
      :headers =>{'Content-Type' => 'application/json'}, :verify => false ).parsed_response
      
  end
  helper_method :apis

  def search
    if params[:search]
      @products = Product.find(:all, :conditions => ['search LIKE ?', "%#{params[:search]}%"])
    else
      @products = Product.all
    end

  end
  
  def search_params
    params.require(:product).permit(:Name, :Price, :Description, :Catagory)
  end
end
