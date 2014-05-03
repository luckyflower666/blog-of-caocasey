# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140503201809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cabines", force: true do |t|
    t.integer  "Store_id"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cabines", ["Store_id"], name: "index_cabines_on_Store_id", using: :btree

  create_table "clients", force: true do |t|
    t.integer  "User_id"
    t.string   "sizeup"
    t.string   "sizedown"
    t.string   "sizeshoes"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["User_id"], name: "index_clients_on_User_id", using: :btree

  create_table "clothings", force: true do |t|
    t.integer  "Item_id"
    t.string   "size"
    t.string   "brand"
    t.string   "uid_cloth"
    t.string   "color"
    t.string   "material"
    t.string   "theme"
    t.string   "collection"
    t.string   "clothstate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clothings", ["Item_id"], name: "index_clothings_on_Item_id", using: :btree

  create_table "demogra_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "job"
    t.float    "income"
    t.string   "socail_category"
    t.string   "marital_statu"
    t.integer  "NbChildren"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "demogra_data", ["Client_id"], name: "index_demogra_data_on_Client_id", using: :btree

  create_table "foods", force: true do |t|
    t.integer  "Item_id"
    t.string   "uid_food"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foods", ["Item_id"], name: "index_foods_on_Item_id", using: :btree

  create_table "hahas", force: true do |t|
    t.integer  "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installation_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "objectId"
    t.string   "appName"
    t.string   "appVersion"
    t.integer  "badge"
    t.string   "deviceToken"
    t.string   "deviceType"
    t.string   "installationId"
    t.string   "parseVersion"
    t.string   "timeZone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installation_data", ["Client_id"], name: "index_installation_data_on_Client_id", using: :btree

  create_table "items", force: true do |t|
    t.integer  "Store_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "describe"
    t.string   "state"
    t.string   "reference"
    t.string   "categorie"
    t.string   "type_rayon"
    t.float    "price"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "items", ["Store_id"], name: "index_items_on_Store_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "Visit_id"
    t.integer  "amount"
    t.string   "payment_method"
    t.boolean  "validate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["Visit_id"], name: "index_orders_on_Visit_id", using: :btree

  create_table "owners", force: true do |t|
    t.integer  "User_id"
    t.string   "facebookappid"
    t.string   "description"
    t.string   "facebookappkey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners", ["User_id"], name: "index_owners_on_User_id", using: :btree

  create_table "parse_data", force: true do |t|
    t.integer  "User_id"
    t.string   "username"
    t.string   "password"
    t.string   "authdata"
    t.string   "email"
    t.boolean  "emailverified"
    t.string   "ACL"
    t.string   "objectId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parse_data", ["User_id"], name: "index_parse_data_on_User_id", using: :btree

  create_table "payment_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "cardnumber"
    t.string   "cardId"
    t.date     "expirationdata"
    t.string   "securitycode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payment_data", ["Client_id"], name: "index_payment_data_on_Client_id", using: :btree

  create_table "paymill_on_rails_plans", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "paymill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paymill_on_rails_subscriptions", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "plan_id"
    t.string   "paymill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", force: true do |t|
    t.integer  "Client_id"
    t.string   "color"
    t.string   "brand"
    t.string   "theme"
    t.string   "material"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferences", ["Client_id"], name: "index_preferences_on_Client_id", using: :btree

  create_table "publications", force: true do |t|
    t.integer  "Client_id"
    t.integer  "Clothing_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publications", ["Client_id"], name: "index_publications_on_Client_id", using: :btree
  add_index "publications", ["Clothing_id"], name: "index_publications_on_Clothing_id", using: :btree

  create_table "queuems", force: true do |t|
    t.integer  "Store_id"
    t.integer  "count"
    t.float    "w"
    t.integer  "qmoyen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "queuems", ["Store_id"], name: "index_queuems_on_Store_id", using: :btree

  create_table "selections", force: true do |t|
    t.integer  "Visit_id"
    t.integer  "Clothing_id"
    t.string   "selectionstate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "selections", ["Clothing_id"], name: "index_selections_on_Clothing_id", using: :btree
  add_index "selections", ["Visit_id"], name: "index_selections_on_Visit_id", using: :btree

  create_table "social_data", force: true do |t|
    t.integer  "Client_id"
    t.boolean  "facebook"
    t.boolean  "twitter"
    t.boolean  "paymill"
    t.boolean  "parse"
    t.string   "facebookToken"
    t.string   "facebookSecret"
    t.string   "profil"
    t.string   "hobbies"
    t.string   "events"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "social_data", ["Client_id"], name: "index_social_data_on_Client_id", using: :btree

  create_table "stores", force: true do |t|
    t.integer  "Owner_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.integer  "numberfittingroom"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "stores", ["Owner_id"], name: "index_stores_on_Owner_id", using: :btree

  create_table "transaction_data", force: true do |t|
    t.integer  "Order_id"
    t.string   "id_transaction"
    t.date     "date_transaction"
    t.integer  "quantity_item"
    t.integer  "t_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transaction_data", ["Order_id"], name: "index_transaction_data_on_Order_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "gender"
    t.integer  "age"
    t.string   "description"
    t.string   "email"
    t.string   "password"
    t.boolean  "facebookconnect"
    t.boolean  "parseconnect"
    t.boolean  "paymillconnect"
    t.boolean  "twitterconnect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "Client_id"
    t.integer  "Store_id"
    t.integer  "Cabine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["Cabine_id"], name: "index_visits_on_Cabine_id", using: :btree
  add_index "visits", ["Client_id"], name: "index_visits_on_Client_id", using: :btree
  add_index "visits", ["Store_id"], name: "index_visits_on_Store_id", using: :btree

end
