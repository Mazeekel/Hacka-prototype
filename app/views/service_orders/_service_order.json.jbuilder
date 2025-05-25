json.extract! service_order, :id, :requirement_id, :status, :type_of_service, :service_cost, :attendimment_feedback, :finished_at, :created_at, :updated_at
json.url service_order_url(service_order, format: :json)
