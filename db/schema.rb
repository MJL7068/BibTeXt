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

ActiveRecord::Schema.define(version: 20170330151734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "ref_key"
    t.string   "author"
    t.string   "journal"
    t.string   "title"
    t.string   "volume"
    t.string   "number"
    t.string   "pages"
    t.string   "year"
    t.string   "month"
    t.string   "note"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "text",      limit: 255
    t.datetime "timestamp"
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "senderId"
    t.integer  "roomId"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name",      limit: 255, null: false
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.index ["name"], name: "rooms_name_key", unique: true, using: :btree
  end

  create_table "session", primary_key: "sid", id: :string, force: :cascade do |t|
    t.column     "sess", :json,                 null: false
    t.datetime "expire", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255, null: false
    t.string   "password_hash", limit: 255, null: false
    t.string   "profilePic",    limit: 255
    t.datetime "createdAt",                 null: false
    t.datetime "updatedAt",                 null: false
    t.index ["username"], name: "users_username_key", unique: true, using: :btree
  end

  add_foreign_key "messages", "rooms", column: "roomId", name: "messages_roomId_fkey", on_update: :cascade, on_delete: :nullify
  add_foreign_key "messages", "users", column: "senderId", name: "messages_senderId_fkey", on_update: :cascade, on_delete: :nullify
end
