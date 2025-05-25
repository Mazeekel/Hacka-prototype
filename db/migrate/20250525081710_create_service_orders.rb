class CreateServiceOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :service_orders do |t|
      t.references :requirement, null: false, foreign_key: true
      t.integer :status
      t.integer :type_of_service
      t.integer :service_cost
      t.text :attendimment_feedback
      t.timestamp :finished_at

      t.timestamps
    end
  end
end
