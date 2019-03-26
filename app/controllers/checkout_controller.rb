class CheckoutController < ApplicationController
    def index
        @order ||= Order.all
    end

    def create
        Order.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            status: params[:status]
        )

        redirect_to orders_path
        
    end
end
