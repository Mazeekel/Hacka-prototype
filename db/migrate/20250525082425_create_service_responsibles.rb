class CreateServiceResponsibles < ActiveRecord::Migration[7.1]
  def change
    create_table :service_responsibles do |t|
      t.references :daily_report, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true
      t.text :responsible_function
      t.string :authorization

      t.timestamps
    end
  end
end
