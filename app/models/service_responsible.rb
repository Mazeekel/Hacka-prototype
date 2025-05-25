class ServiceResponsible < ApplicationRecord
  belongs_to :daily_report
  belongs_to :responsible
end
