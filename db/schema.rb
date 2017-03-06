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

ActiveRecord::Schema.define(version: 20170306041605) do

  create_table "friends", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programmers", force: :cascade do |t|
    t.string   "programmer"
    t.integer  "experience"
    t.integer  "is_senior"
    t.integer  "friend_id"
    t.integer  "programmer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["programmer_id"], name: "index_programmers_on_programmer_id"
  end

  create_table "programmers_technologies", id: false, force: :cascade do |t|
    t.integer "programmer_id"
    t.integer "technology_id"
    t.index ["programmer_id"], name: "index_programmers_technologies_on_programmer_id"
    t.index ["technology_id"], name: "index_programmers_technologies_on_technology_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "technology"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
