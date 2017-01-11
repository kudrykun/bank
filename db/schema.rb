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

ActiveRecord::Schema.define(version: 20170111142638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.decimal  "balance"
    t.integer  "holder_id"
    t.integer  "deposit_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["deposit_type_id"], name: "index_accounts_on_deposit_type_id", using: :btree
    t.index ["holder_id"], name: "index_accounts_on_holder_id", using: :btree
  end

  create_table "deposit_types", force: :cascade do |t|
    t.string   "type"
    t.float    "rate"
    t.date     "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holders", force: :cascade do |t|
    t.string   "name"
    t.string   "surename"
    t.string   "passport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.decimal  "amount"
    t.string   "meta_name"
    t.date     "date"
    t.integer  "operator_id"
    t.integer  "account_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["account_id"], name: "index_operations_on_account_id", using: :btree
    t.index ["operator_id"], name: "index_operations_on_operator_id", using: :btree
  end

  create_table "operators", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "surename"
    t.string   "middlename"
    t.date     "born"
    t.boolean  "family"
    t.integer  "children"
    t.boolean  "senior"
    t.boolean  "boss"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_operators_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_operators_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "accounts", "deposit_types"
  add_foreign_key "accounts", "holders"
  add_foreign_key "operations", "accounts"
  add_foreign_key "operations", "operators"
end
