# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100331101022) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "www"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.text     "info"
    t.string   "map_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", :force => true do |t|
    t.string   "name"
    t.text     "info"
    t.decimal  "price",      :precision => 6, :scale => 2
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
  end

  create_table "news", :force => true do |t|
    t.string   "header"
    t.text     "body"
    t.datetime "valid_from"
    t.datetime "valid_until"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "login"
    t.string   "email"
    t.text     "info"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_salt"
    t.string   "crypted_password"
    t.string   "persistence_token"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
