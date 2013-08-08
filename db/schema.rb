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

ActiveRecord::Schema.define(:version => 20130717191637) do

  create_table "bonds", :force => true do |t|
    t.string   "cusip"
    t.string   "coupon"
    t.string   "maturity"
    t.string   "rating"
    t.string   "prospectus"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.string   "ticker"
    t.string   "url"
    t.integer  "exchange_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "exchanges", :force => true do |t|
    t.string   "exchange_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end