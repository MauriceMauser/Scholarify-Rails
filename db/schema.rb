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

ActiveRecord::Schema.define(:version => 20121118071724) do

  create_table "courses", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "title"
    t.string   "company"
    t.string   "intro_video"
    t.string   "thumbnail"
    t.string   "description"
    t.string   "difficulty"
    t.string   "requirements"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "challenge_title"
    t.string   "challenge_description"
    t.string   "challenge_status"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "image"
    t.string   "location"
    t.string   "education"
    t.string   "experience"
    t.string   "cv"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
