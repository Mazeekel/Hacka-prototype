class CreateDailyReportEquipmentUsages < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_report_equipment_usages do |t|
      t.references :daily_report, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true
      t.time :usage_time
      t.string :equipment

      t.timestamps
    end
  end
end
