class CreateStockings < ActiveRecord::Migration[7.1]
  def change
    create_table :stockings do |t|
      t.integer :material
      t.integer :quantity
      t.integer :unit
      t.integer :treshould_to_request_restock

      t.timestamps
    end
  end
end
