class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :neighborhood
      t.integer :postal_code
      t.string :reference_point
      t.string :treatment
      t.integer :cep

      t.timestamps
    end
  end
end
