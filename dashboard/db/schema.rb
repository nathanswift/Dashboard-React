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

ActiveRecord::Schema.define(version: 2019_04_11_010829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", force: :cascade do |t|
    t.string "name"
    t.bigint "taskboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taskboard_id"], name: "index_columns_on_taskboard_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_companies_on_admin_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "taskboards", force: :cascade do |t|
    t.string "name"
    t.string "started_at"
    t.string "finish_by"
    t.bigint "companies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companies_id"], name: "index_taskboards_on_companies_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "assigned_to"
    t.string "description"
    t.string "started_at"
    t.string "finish_by"
    t.boolean "completed", default: false
    t.bigint "column_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["column_id"], name: "index_tasks_on_column_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "name"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
  end

  add_foreign_key "columns", "taskboards"
  add_foreign_key "companies", "admins"
  add_foreign_key "messages", "users"
  add_foreign_key "taskboards", "companies", column: "companies_id"
  add_foreign_key "tasks", "columns"
  add_foreign_key "users", "companies"
end
