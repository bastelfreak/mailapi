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

ActiveRecord::Schema.define(version: 20150113211843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree

  create_table "aliases", force: :cascade do |t|
    t.string   "source"
    t.string   "destination"
    t.integer  "domain_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "aliases", ["source", "destination"], name: "index_aliases_on_source_and_destination", unique: true, using: :btree

  create_table "domains", force: :cascade do |t|
    t.string   "domainname"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "domains", ["domainname"], name: "index_domains_on_domainname", unique: true, using: :btree

end
