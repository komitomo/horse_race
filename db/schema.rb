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

ActiveRecord::Schema.define(version: 20141102065332) do

  create_table "bettings", force: true do |t|
    t.date     "date"
    t.string   "race_course"
    t.string   "race_grade"
    t.string   "race_name"
    t.string   "betting_type"
    t.string   "betting_way"
    t.string   "betting_option"
    t.string   "favorite"
    t.string   "horse_nums"
    t.integer  "points"
    t.integer  "unit"
    t.integer  "total"
    t.integer  "income"
    t.integer  "loss"
    t.integer  "account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
