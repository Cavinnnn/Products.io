require 'singleton'
class ShoppingCart
  include Singleton

      def order
        Order.where(status: nil)
      end

      def items_count
        Order.where(status: nil).sum(:quantity)
      end
    
      def add_item(product_id:, user_id:, quantity: 1)
        product = Product.find(product_id)
        user = User.find(user_id)

        order = Order.find_or_initialize_by(product_id: product_id, user_id: user_id)
        

        order.price = product.Price
        order.quantity = quantity

        order.save
      end

      def place_order(first_name: first_name,last_name: last_name)
        
      end

      
    def remove_item(id:)
      Order.destroy(id)
    end


    
end