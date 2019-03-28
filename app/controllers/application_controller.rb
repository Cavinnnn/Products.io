require 'net/http'
require 'json'
require 'net/http'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_cart

  def current_cart
    @current_cart ||= ShoppingCart.instance
  end
  helper_method :current_cart

  def apis
    @call = HTTParty.get('https://api.exchangeratesapi.io/latest?symbols=USD,GBP',
      :headers =>{'Content-Type' => 'application/json'}, :verify => false)

    @apis = JSON.parse(@call.body)

    # <%= apis.each do |api| %>
    #   <%= api[2] %>
    # <% end %>
    
  end
  helper_method :apis

  def search
    if params[:search]
      @products = Product.find(:all, :conditions => ['search LIKE ?', "%#{params[:search]}%"])
    else
      @products = Product.all
    end

  end

  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    "/signedinuserprofile"
  end

  
  def search_params
    params.require(:product).permit(:Name, :Price, :Description, :Catagory)
  end
end
