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

ActiveRecord::Schema[8.0].define(version: 2025_05_24_012334) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "food_registrations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.boolean "solo", default: false
    t.integer "planned_meals"
    t.integer "cooked_meals"
    t.integer "clean_up_meals"
    t.integer "eat_out_meals"
    t.integer "meal_types"
    t.text "allergies_and_restrictions"
    t.string "special_requests"
  end
end
