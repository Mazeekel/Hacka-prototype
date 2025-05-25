class CreateDailyServiceConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_service_conditions do |t|
      t.references :daily_report, null: false, foreign_key: true
      t.json :condition

      t.timestamps
    end
  end
end
