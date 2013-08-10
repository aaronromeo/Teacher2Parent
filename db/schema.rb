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

ActiveRecord::Schema.define(version: 20130810155840) do

  create_table "adhoc_messages", force: true do |t|
    t.boolean  "isNew"
    t.integer  "student_id"
    t.integer  "parent_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adhoc_messages", ["student_id"], name: "index_adhoc_messages_on_student_id", using: :btree

  create_table "feedbacks", force: true do |t|
    t.text     "comment"
    t.string   "criteria"
    t.string   "gender"
    t.integer  "interaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: true do |t|
    t.integer  "initiated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interactions", ["initiated_by_id"], name: "index_interactions_on_initiated_by_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translations", force: true do |t|
    t.integer  "language_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations", ["language_id"], name: "index_translations_on_language_id", using: :btree

end
