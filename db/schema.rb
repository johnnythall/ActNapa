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

ActiveRecord::Schema.define(version: 20150108221737) do

  create_table "actors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "city_of_residence"
    t.integer  "sex_id"
    t.integer  "ethnicity_id"
    t.integer  "height"
    t.string   "age_min"
    t.string   "age_max"
    t.string   "hair_color"
    t.string   "eye_color"
    t.string   "website"
    t.string   "reel"
    t.boolean  "student"
    t.string   "expected_grad"
    t.text     "skills"
    t.text     "previous_experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actors", ["ethnicity_id"], name: "index_actors_on_ethnicity_id"
  add_index "actors", ["sex_id"], name: "index_actors_on_sex_id"

  create_table "ethnicities", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexes", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
