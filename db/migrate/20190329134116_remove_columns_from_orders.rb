class RemoveColumnsFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :token, :string
    remove_column :orders, :sub_total, :integer
  end
end
