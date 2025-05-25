json.extract! daily_report, :id, :construction_responsible_id, :supervisor_id, :service_order_id, :climatic_condition_morning, :climatic_condition_afternoon, :teams_departure_time, :teams_arrival_time, :teams_exit_time, :teams_return_time, :created_at, :updated_at
json.url daily_report_url(daily_report, format: :json)
