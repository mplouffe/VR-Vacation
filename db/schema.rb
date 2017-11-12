# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171112181247) do

  create_table "about_contents", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sprite"
  end

  create_table "contact_infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "city"
    t.string "postal_code"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "province_id"
    t.index ["province_id"], name: "index_contact_infos_on_province_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "postal_code"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "province_id"
    t.string "phone_number"
    t.index ["province_id"], name: "index_customers_on_province_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "amount"
  end

  create_table "event_characters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.integer "character_id"
    t.index ["character_id"], name: "index_event_characters_on_character_id"
    t.index ["event_id"], name: "index_event_characters_on_event_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_type_id"
    t.string "screenshot"
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "quantity"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.integer "package_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["package_id"], name: "index_line_items_on_package_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "game"
    t.string "system"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcard"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "package_discounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "package_id"
    t.integer "discount_id"
    t.index ["discount_id"], name: "index_package_discounts_on_discount_id"
    t.index ["package_id"], name: "index_package_discounts_on_package_id"
  end

  create_table "package_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.integer "package_id"
    t.index ["event_id"], name: "index_package_events_on_event_id"
    t.index ["package_id"], name: "index_package_events_on_package_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "location_id"
    t.string "screenshot"
    t.index ["category_id"], name: "index_packages_on_category_id"
    t.index ["location_id"], name: "index_packages_on_location_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "abbrv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "pst_rate"
  end

end
