class CreateSurveyMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :survey_media do |t|
      t.references :media, null: false, foreign_key: true
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
