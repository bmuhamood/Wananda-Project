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

ActiveRecord::Schema[7.0].define(version: 2022_12_26_181136) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_offers", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "offer_id", null: false
    t.index ["category_id", "offer_id"], name: "index_categories_offers_on_category_id_and_offer_id"
    t.index ["offer_id", "category_id"], name: "index_categories_offers_on_offer_id_and_category_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupans", force: :cascade do |t|
    t.string "title"
    t.string "coupon_code"
    t.text "redemption_instructions"
    t.datetime "expiration_date"
    t.string "main_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.boolean "featured", default: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "title"
    t.string "main_image"
    t.string "offer_code"
    t.text "offer_instructions"
    t.datetime "expiration_date"
    t.time "opening_time"
    t.time "closing_time"
    t.string "mobile"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "discounts"
    t.string "images", default: [], array: true
    t.integer "category_id"
    t.boolean "featured", default: false
    t.boolean "verified", default: false
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.string "main_image"
    t.string "offer_code"
    t.text "offer_instructions"
    t.datetime "expiration_date"
    t.time "opening_time"
    t.time "closing_time"
    t.string "mobile"
    t.string "images"
    t.string "shop_number"
    t.string "street"
    t.string "landmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "state"
    t.string "city"
    t.boolean "featured", default: false
    t.boolean "verified", default: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
