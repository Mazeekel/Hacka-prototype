# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_25_082749) do
  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "neighborhood"
    t.integer "postal_code"
    t.string "reference_point"
    t.string "treatment"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_report_equipment_usages", force: :cascade do |t|
    t.integer "daily_report_id", null: false
    t.integer "responsible_id", null: false
    t.time "usage_time"
    t.string "equipment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_report_id"], name: "index_daily_report_equipment_usages_on_daily_report_id"
    t.index ["responsible_id"], name: "index_daily_report_equipment_usages_on_responsible_id"
  end

  create_table "daily_report_resource_allocations", force: :cascade do |t|
    t.integer "stocking_id", null: false
    t.integer "daily_report_id", null: false
    t.integer "quantity"
    t.integer "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_report_id"], name: "index_daily_report_resource_allocations_on_daily_report_id"
    t.index ["stocking_id"], name: "index_daily_report_resource_allocations_on_stocking_id"
  end

  create_table "daily_report_services", force: :cascade do |t|
    t.integer "daily_report_id", null: false
    t.integer "area"
    t.integer "unit"
    t.text "service_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_report_id"], name: "index_daily_report_services_on_daily_report_id"
  end

  create_table "daily_reports", force: :cascade do |t|
    t.integer "construction_responsible_id", null: false
    t.integer "supervisor_id", null: false
    t.integer "service_order_id", null: false
    t.integer "climatic_condition_morning"
    t.integer "climatic_condition_afternoon"
    t.datetime "teams_departure_time"
    t.datetime "teams_arrival_time"
    t.datetime "teams_exit_time"
    t.datetime "teams_return_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["construction_responsible_id"], name: "index_daily_reports_on_construction_responsible_id"
    t.index ["service_order_id"], name: "index_daily_reports_on_service_order_id"
    t.index ["supervisor_id"], name: "index_daily_reports_on_supervisor_id"
  end

  create_table "daily_service_conditions", force: :cascade do |t|
    t.integer "daily_report_id", null: false
    t.json "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_report_id"], name: "index_daily_service_conditions_on_daily_report_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.integer "department_id", null: false
    t.integer "responsible_id", null: false
    t.integer "address_id", null: false
    t.integer "type_of_requirement"
    t.integer "document_number"
    t.integer "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_requirements_on_address_id"
    t.index ["department_id"], name: "index_requirements_on_department_id"
    t.index ["responsible_id"], name: "index_requirements_on_responsible_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_orders", force: :cascade do |t|
    t.integer "requirement_id", null: false
    t.integer "status"
    t.integer "type_of_service"
    t.integer "service_cost"
    t.text "attendimment_feedback"
    t.datetime "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requirement_id"], name: "index_service_orders_on_requirement_id"
  end

  create_table "service_responsibles", force: :cascade do |t|
    t.integer "daily_report_id", null: false
    t.integer "responsible_id", null: false
    t.text "responsible_function"
    t.string "authorization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_report_id"], name: "index_service_responsibles_on_daily_report_id"
    t.index ["responsible_id"], name: "index_service_responsibles_on_responsible_id"
  end

  create_table "stockings", force: :cascade do |t|
    t.integer "material"
    t.integer "quantity"
    t.integer "unit"
    t.integer "treshould_to_request_restock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_media", force: :cascade do |t|
    t.integer "media_id", null: false
    t.integer "survey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_id"], name: "index_survey_media_on_media_id"
    t.index ["survey_id"], name: "index_survey_media_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "service_order_id", null: false
    t.text "report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_order_id"], name: "index_surveys_on_service_order_id"
  end

  add_foreign_key "daily_report_equipment_usages", "daily_reports"
  add_foreign_key "daily_report_equipment_usages", "responsibles"
  add_foreign_key "daily_report_resource_allocations", "daily_reports"
  add_foreign_key "daily_report_resource_allocations", "stockings"
  add_foreign_key "daily_report_services", "daily_reports"
  add_foreign_key "daily_reports", "construction_responsibles"
  add_foreign_key "daily_reports", "service_orders"
  add_foreign_key "daily_reports", "supervisors"
  add_foreign_key "daily_service_conditions", "daily_reports"
  add_foreign_key "requirements", "addresses"
  add_foreign_key "requirements", "departments"
  add_foreign_key "requirements", "responsibles"
  add_foreign_key "service_orders", "requirements"
  add_foreign_key "service_responsibles", "daily_reports"
  add_foreign_key "service_responsibles", "responsibles"
  add_foreign_key "survey_media", "media", column: "media_id"
  add_foreign_key "survey_media", "surveys"
  add_foreign_key "surveys", "service_orders"
end
