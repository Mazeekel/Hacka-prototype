class Requirement < ApplicationRecord
  belongs_to :department
  belongs_to :responsible
  belongs_to :address
end
