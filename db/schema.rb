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

ActiveRecord::Schema.define(:version => 20130801230916) do

  create_table "airports", :force => true do |t|
    t.string   "airport_code"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "city"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "flights", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "arrival_airport"
    t.string   "departure_airport"
    t.datetime "arrival_datetime"
    t.datetime "departure_datetime"
    t.string   "flight_code"
    t.string   "airline"
    t.float    "arrival_latitude"
    t.float    "arrival_longitude"
    t.float    "departure_latitude"
    t.float    "departure_longitude"
    t.integer  "plane_id"
  end

  create_table "passengers", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "passengers", ["email"], :name => "index_passengers_on_email", :unique => true
  add_index "passengers", ["reset_password_token"], :name => "index_passengers_on_reset_password_token", :unique => true

  create_table "planes", :force => true do |t|
    t.string   "plane_name"
    t.integer  "flight_id"
    t.integer  "row"
    t.integer  "column"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tickets", :force => true do |t|
    t.string   "seat"
    t.integer  "flight_id"
    t.integer  "passenger_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
