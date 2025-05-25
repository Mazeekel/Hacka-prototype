class SurveyMedia < ApplicationRecord
  belongs_to :media
  belongs_to :survey
end
