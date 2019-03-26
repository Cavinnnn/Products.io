class RemoveColsFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :sub_total, :integer
    remove_column :orders, :product_id_id, :ingeger
  end
end
