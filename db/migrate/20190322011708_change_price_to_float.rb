class ChangePriceToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :Price, :float
  end
end
