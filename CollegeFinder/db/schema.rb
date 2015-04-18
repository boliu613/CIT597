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

ActiveRecord::Schema.define(:version => 20150418201916) do

  create_table "colleges", :force => true do |t|
    t.integer  "u_id"
    t.string   "inst_name"
    t.integer  "year"
    t.integer  "tuition_fees"
    t.string   "state"
    t.string   "region"
    t.string   "control"
    t.string   "urbanization"
    t.integer  "total_enroll"
    t.integer  "under_enroll"
    t.integer  "grad_enroll"
    t.integer  "stu_fac_ratio"
    t.integer  "app_total"
    t.integer  "adm_total"
    t.integer  "enroll_total"
    t.integer  "per_adm"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "website"
    t.string   "admweb"
    t.string   "longitude"
    t.string   "latitude"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.float    "GPA"
    t.float    "SAT"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
