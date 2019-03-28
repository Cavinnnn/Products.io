class CheckoutController < ApplicationController
    def index
        @order ||= Order.all
    end

    def create
        current_cart.observer(
            status: params[:status],
            first_name: params[:first_name],
            last_name: params[:last_name]
        )
        redirect_to orders_path
    end
end
