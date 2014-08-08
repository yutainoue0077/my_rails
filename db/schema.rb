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

ActiveRecord::Schema.define(version: 20140808073458) do

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "family_name"
    t.string   "given_name"
    t.integer  "join_nexway"
    t.string   "speciality"
    t.string   "past_experience"
    t.string   "hobby"
    t.string   "favorite_food"
    t.integer  "join_recruit"
    t.string   "email_address"
    t.integer  "phone_number"
    t.datetime "modified_at"
    t.datetime "created_at"
    t.string   "image"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.boolean  "done",       default: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

end
