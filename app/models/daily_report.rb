class DailyReport < ApplicationRecord
  belongs_to :construction_responsible
  belongs_to :supervisor
  belongs_to :service_order
end
