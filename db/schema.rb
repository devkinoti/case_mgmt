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

ActiveRecord::Schema.define(version: 2021_01_08_105436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "first_building_number"
    t.integer "second_building_number"
    t.string "area_locality"
    t.string "city"
    t.string "zip_postcode"
    t.string "state_province_county"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "case_trials", force: :cascade do |t|
    t.string "trial_outcome_code"
    t.string "trial_status_code"
    t.bigint "address_id", null: false
    t.integer "case_reference_number"
    t.string "trial_location_name"
    t.datetime "trial_start_date"
    t.time "expected_duration"
    t.date "trial_end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_case_trials_on_address_id"
  end

  create_table "organization_addresses", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.bigint "address_id", null: false
    t.date "date_address_from"
    t.date "date_address_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_organization_addresses_on_address_id"
    t.index ["organization_id"], name: "index_organization_addresses_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "organization_type_code"
    t.string "organization_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people_roles", force: :cascade do |t|
    t.string "role_code"
    t.date "date_role_from"
    t.date "date_role_to"
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_people_roles_on_person_id"
  end

  create_table "person_addresses", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "address_id"
    t.date "date_address_to"
    t.date "date_address_from"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_person_addresses_on_address_id"
    t.index ["person_id"], name: "index_person_addresses_on_person_id"
  end

  create_table "person_at_trials", force: :cascade do |t|
    t.bigint "case_trial_id", null: false
    t.bigint "person_role_id", null: false
    t.datetime "appearance_start_datetime"
    t.datetime "appearance_end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_trial_id"], name: "index_person_at_trials_on_case_trial_id"
    t.index ["person_role_id"], name: "index_person_at_trials_on_person_role_id"
  end

  create_table "person_roles", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "role_code"
    t.date "date_role_from"
    t.date "date_role_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_person_roles_on_person_id"
  end

  add_foreign_key "case_trials", "addresses"
  add_foreign_key "organization_addresses", "addresses"
  add_foreign_key "organization_addresses", "organizations"
  add_foreign_key "people_roles", "people"
  add_foreign_key "person_addresses", "people"
  add_foreign_key "person_at_trials", "case_trials"
  add_foreign_key "person_at_trials", "person_roles"
  add_foreign_key "person_roles", "people"
end
