class CreateResponsibles < ActiveRecord::Migration[7.1]
  def change
    create_table :responsibles do |t|
      t.string :name

      t.timestamps
    end
  end
end
