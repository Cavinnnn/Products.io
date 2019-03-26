class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :Name
      t.integer :Price
      t.string :Image_URL
      t.text :Description
      t.string :Catagory

      t.timestamps
    end
  end
end
