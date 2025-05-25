class DailyReportResourceAllocation < ApplicationRecord
  belongs_to :stocking
  belongs_to :daily_report
end
