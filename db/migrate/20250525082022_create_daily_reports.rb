class CreateDailyReports < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_reports do |t|
      t.references :construction_responsible, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true
      t.references :service_order, null: false, foreign_key: true
      t.integer :climatic_condition_morning
      t.integer :climatic_condition_afternoon
      t.timestamp :teams_departure_time
      t.timestamp :teams_arrival_time
      t.timestamp :teams_exit_time
      t.timestamp :teams_return_time

      t.timestamps
    end
  end
end
