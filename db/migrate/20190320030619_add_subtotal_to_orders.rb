class AddSubtotalToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :sub_total, :integer
  end
end
