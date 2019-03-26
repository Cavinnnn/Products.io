class OrdersController < ApplicationController

    def cart
        @order = current_cart.order
    end

    def create
        current_cart.add_item(
            product_id: params[:product_id],
            user_id: params[:user_id],
            quantity: params[:quantity]
        )
        redirect_to orders_path
    end

    def destroy 
        current_cart.remove_item(id: params[:id])
        redirect_to orders_path
    end

    def subtotal
        @subtotal = Order.where(status: nil).sum('quantity * price')
    end
    helper_method :subtotal
    
    
    def order_params
        params.permit(:first_name, :last_name)
    end
end
