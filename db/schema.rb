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

ActiveRecord::Schema.define(version: 20171102074546) do

  create_table "lineitems", force: :cascade do |t|
    t.string "service_name"
    t.text "description"
    t.string "product_price"
    t.integer "quantity"
    t.string "payment_method"
    t.string "delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serviceid"
    t.string "cod"
    t.string "service_features"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.string "service_name"
    t.string "product_price"
    t.string "seller"
    t.string "seller_website"
    t.string "address"
    t.string "payment_method"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "features"
    t.integer "price"
    t.string "seller"
    t.string "seller_website"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "extra1"
    t.integer "{:foreign_key=>true}_id"
    t.index ["{:foreign_key=>true}_id"], name: "index_services_on_{:foreign_key=>true}_id"
  end

end
