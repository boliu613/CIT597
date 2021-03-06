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

ActiveRecord::Schema.define(:version => 20150425222714) do

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

  create_table "colleges_users", :id => false, :force => true do |t|
    t.integer "college_id"
    t.integer "user_id"
  end

  add_index "colleges_users", ["college_id", "user_id"], :name => "index_colleges_users_on_college_id_and_user_id"
  add_index "colleges_users", ["user_id"], :name => "index_colleges_users_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
