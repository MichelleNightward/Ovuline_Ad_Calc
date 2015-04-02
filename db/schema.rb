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

ActiveRecord::Schema.define(version: 20150402153550) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "companyname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employee_emails", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "adtype"
    t.string   "views"
    t.string   "demographics"
    t.string   "subtotal"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "company_id"
    t.string   "location"
    t.string   "ttc"
    t.string   "age"
    t.string   "weeks_pregnant"
    t.string   "days_since_signup"
    t.string   "fertility_condition"
    t.string   "cycle_stage"
    t.string   "house_hold_income"
    t.string   "monthly_acivity"
    t.string   "budget"
    t.string   "begin_date"
    t.string   "end_date"
    t.string   "campaign_name"
    t.boolean  "ovuline_exclusive"
    t.boolean  "native_ad"
    t.boolean  "native_article"
    t.boolean  "social_ad"
  end

end
