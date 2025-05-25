class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.references :service_order, null: false, foreign_key: true
      t.text :report

      t.timestamps
    end
  end
end
