# https://github.com/BaylorRae/rails-shopping-cart/blob/master/app/models/shopping_cart.rb

require 'singleton'
require 'observer'

class ShoppingCart
    include Singleton
    include Observer

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

        def observer(status: status, first_name: first_name, last_name: last_name)

          Order.where(status: nil).update(
              status: status,
              first_name: first_name,
              last_name: last_name
            )

          notify_observers
          puts "status: nil changes to #{status}"
        end
        
      def remove_item(id:)
        Order.destroy(id)
      end

end