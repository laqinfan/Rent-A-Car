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

ActiveRecord::Schema.define(version: 20180501235101) do

  create_table "addresses", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "availabilities", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
    t.index ["car_id"], name: "index_availabilities_on_car_id"

  create_table "car_ratings", force: :cascade do |t|
    t.integer "rating"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
    t.integer "user_id"
    t.integer "contract_id"
    t.index ["car_id"], name: "index_car_ratings_on_car_id"
    t.index ["contract_id"], name: "index_car_ratings_on_contract_id"
    t.index ["user_id"], name: "index_car_ratings_on_user_id"

  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "color"
    t.string "description"
    t.string "category"
    t.string "mileage"
    t.integer "number_of_seats"
    t.decimal "price_per_day", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "communications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "message_id"
    t.integer "sender_id"
    t.integer "reciever_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_communications_on_conversation_id"
    t.index ["message_id"], name: "index_communications_on_message_id"
    t.index ["reciever_id"], name: "index_communications_on_reciever_id"
    t.index ["sender_id"], name: "index_communications_on_sender_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "start_date"
    t.string "return_date"
    t.decimal "price"
    t.decimal "subtotal"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "string"
    t.integer "car_id"
    t.integer "owner_paypal_id"
    t.integer "renter_paypal_id"
    t.index ["car_id"], name: "index_contracts_on_car_id"
    t.index ["owner_paypal_id"], name: "index_contracts_on_owner_paypal_id"
    t.index ["renter_paypal_id"], name: "index_contracts_on_renter_paypal_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user1_id"
    t.integer "user2_id"
    t.index ["user1_id"], name: "index_conversations_on_user1_id"
    t.index ["user2_id"], name: "index_conversations_on_user2_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "status"
    t.integer "address_id"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_locations_on_address_id"
    t.index ["addressable_type", "addressable_id"], name: "index_locations_on_addressable_type_and_addressable_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "user_name"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owner_ratings", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "owner_id"
    t.integer "contract_id"
    t.index ["contract_id"], name: "index_owner_ratings_on_contract_id"
    t.index ["owner_id"], name: "index_owner_ratings_on_owner_id"
    t.index ["user_id"], name: "index_owner_ratings_on_user_id"
  end

  create_table "paypals", force: :cascade do |t|
    t.integer "paypal_id"
    t.string "paypal_username"
    t.integer "paypal_account_routing_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_paypals_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "drivers_license"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "backgroundcheck_status"
    t.string "phone"
    t.integer "social_security"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.integer "user_id"
    t.index ["user_id"], name: "index_testimonials_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
