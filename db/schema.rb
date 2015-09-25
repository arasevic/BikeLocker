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

ActiveRecord::Schema.define(version: 20150925172347) do

  create_table "admins", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "admins", ["store_id"], name: "index_admins_on_store_id"

  create_table "bicycles", force: :cascade do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "model_year"
    t.integer  "store_id"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "serial_number"
  end

  add_index "bicycles", ["customer_id"], name: "index_bicycles_on_customer_id"
  add_index "bicycles", ["store_id"], name: "index_bicycles_on_store_id"

  create_table "customers", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.string   "labor_type"
    t.float    "man_hours"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "stree_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "work_days", force: :cascade do |t|
    t.datetime "date"
    t.float    "available_man_hours"
    t.float    "scheduled_man_hours"
    t.float    "total_man_hours"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.boolean  "finished"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "work_orders", ["customer_id"], name: "index_work_orders_on_customer_id"

end
