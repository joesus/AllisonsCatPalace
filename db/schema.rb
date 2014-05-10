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

ActiveRecord::Schema.define(version: 20140510213837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kittens", force: true do |t|
    t.boolean  "adoptable"
    t.integer  "cutenesslevel"
    t.string   "picture"
    t.integer  "age"
    t.string   "name"
    t.string   "gender"
    t.string   "birthcity"
    t.string   "birthstate"
    t.text     "about"
    t.string   "favoritefood"
    t.string   "favoritetoy"
    t.string   "favoritebathroom"
    t.string   "favoritenapspot"
    t.string   "favoritehat"
    t.string   "favoriteoutfit"
    t.float    "weight"
    t.text     "greeting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
