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

ActiveRecord::Schema.define(:version => 20130810171246) do

  create_table "admin_users", :force => true do |t|
    t.string   "first_name", :limit => 20
    t.string   "last_name",  :limit => 20
    t.string   "password",   :limit => 20
    t.string   "email",                    :default => ""
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "bankdocs", :force => true do |t|
    t.string   "name",        :limit => 20
    t.string   "kind",        :limit => 20
    t.date     "date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "userhome_id"
  end

  create_table "banks", :force => true do |t|
    t.integer  "admin_user_id"
    t.string   "name",          :limit => 20
    t.string   "type",          :limit => 20
    t.date     "date"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "banks", ["admin_user_id"], :name => "index_banks_on_admin_user_id"

  create_table "billing_papers", :force => true do |t|
    t.string   "name",        :limit => 20
    t.string   "kind",        :limit => 20
    t.date     "date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "userhome_id"
  end

  create_table "connects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discovers", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "junk_papers", :force => true do |t|
    t.string   "name",        :limit => 20
    t.string   "kind",        :limit => 20
    t.date     "date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "userhome_id"
  end

  create_table "junks", :force => true do |t|
    t.string   "name",       :limit => 20
    t.string   "type",       :limit => 20
    t.date     "date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "mes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "signup", :force => true do |t|
    t.string   "first_name", :limit => 20
    t.string   "last_name",  :limit => 20
    t.string   "password",   :limit => 20
    t.string   "email",                    :default => ""
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "signups", :force => true do |t|
    t.string   "first_name", :limit => 20
    t.string   "last_name",  :limit => 20
    t.string   "password",   :limit => 20
    t.string   "email",                    :default => ""
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "user_pages", :id => false, :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "userhome_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_pages", ["admin_user_id", "userhome_id"], :name => "index_user_pages_on_admin_user_id_and_userhome_id"

  create_table "user_papers", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "userhome_id"
    t.integer  "billing_paper_id"
    t.integer  "bankdoc_id"
    t.integer  "junk_paper_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "user_papers", ["admin_user_id", "userhome_id"], :name => "index_user_papers_on_admin_user_id_and_userhome_id"

  create_table "userhomes", :force => true do |t|
    t.string   "name",          :limit => 20
    t.string   "kind",          :limit => 20
    t.date     "date"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "admin_user_id"
  end

  add_index "userhomes", ["admin_user_id", "created_at"], :name => "index_userhomes_on_admin_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
