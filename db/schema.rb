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

ActiveRecord::Schema.define(version: 20170421123429) do

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

  create_table "books", force: :cascade do |t|
    t.string   "ref_key"
    t.string   "author"
    t.string   "title"
    t.string   "publisher"
    t.string   "volume"
    t.string   "number"
    t.string   "series"
    t.string   "address"
    t.string   "edition"
    t.string   "year"
    t.string   "month"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "in_proceedings", force: :cascade do |t|
    t.string   "ref_key"
    t.string   "author"
    t.string   "title"
    t.string   "booktitle"
    t.string   "editor"
    t.string   "volume"
    t.string   "number"
    t.string   "series"
    t.string   "pages"
    t.string   "address"
    t.string   "organization"
    t.string   "publisher"
    t.string   "year"
    t.string   "month"
    t.string   "note"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
