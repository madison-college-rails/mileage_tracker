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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110412034019) do

  create_table "makes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mileages", :force => true do |t|
    t.integer  "vehicle_id"
    t.decimal  "miles"
    t.decimal  "gallons"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "filled_tank_on"
  end

  create_table "models", :force => true do |t|
    t.integer  "make_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "color"
    t.integer  "year"
    t.string   "license_plate_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "model_id"
  end

end
