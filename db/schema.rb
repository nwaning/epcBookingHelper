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

ActiveRecord::Schema.define(:version => 20130301205350) do

  create_table "availabilities", :force => true do |t|
    t.string   "street"
    t.string   "nr"
    t.integer  "region_id"
    t.integer  "FTTC"
    t.integer  "FTTH"
    t.integer  "WiMax"
    t.integer  "Richtfunk"
    t.integer  "istGebiet"
    t.string   "plz"
    t.string   "ort"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookings", :force => true do |t|
    t.string   "nachname"
    t.string   "vorname"
    t.string   "adresse"
    t.string   "hausnummer"
    t.integer  "plz"
    t.string   "ort"
    t.string   "telefon"
    t.string   "email"
    t.string   "mobil"
    t.date     "geburtsdatum"
    t.integer  "scale_id"
    t.integer  "connectiontyp_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "connectiontypes", :force => true do |t|
    t.string   "name"
    t.string   "bezeichnung"
    t.integer  "region_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.string   "notiz"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scales", :force => true do |t|
    t.string   "name"
    t.string   "bezeichnung"
    t.float    "monatlich"
    t.float    "einmalig"
    t.integer  "region_id"
    t.string   "notiz"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
