class CreateDailyReportServices < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_report_services do |t|
      t.references :daily_report, null: false, foreign_key: true
      t.integer :area
      t.integer :unit
      t.text :service_description

      t.timestamps
    end
  end
end
