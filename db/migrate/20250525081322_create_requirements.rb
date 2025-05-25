class CreateRequirements < ActiveRecord::Migration[7.1]
  def change
    create_table :requirements do |t|
      t.references :department, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.integer :type_of_requirement
      t.integer :document_number
      t.integer :telephone

      t.timestamps
    end
  end
end
