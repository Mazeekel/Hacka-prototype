class CreateDailyReportResourceAllocations < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_report_resource_allocations do |t|
      t.references :stocking, null: false, foreign_key: true
      t.references :daily_report, null: false, foreign_key: true
      t.integer :quantity
      t.integer :unit

      t.timestamps
    end
  end
end
