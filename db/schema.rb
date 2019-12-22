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

ActiveRecord::Schema.define(version: 20191222172432) do

  create_table "comments", force: :cascade do |t|
    t.string "commentable_type"
    t.integer "commentable_id"
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grievance_recipients", force: :cascade do |t|
    t.integer "grievance_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grievance_id"], name: "index_grievance_recipients_on_grievance_id"
    t.index ["user_id"], name: "index_grievance_recipients_on_user_id"
  end

  create_table "grievances", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "arbitrator_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
    t.index ["arbitrator_id"], name: "index_grievances_on_arbitrator_id"
    t.index ["reporter_id"], name: "index_grievances_on_reporter_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lols", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "receiver_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_lols_on_receiver_id"
    t.index ["reporter_id"], name: "index_lols_on_reporter_id"
  end

  create_table "proclamations", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "receiver_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_proclamations_on_receiver_id"
    t.index ["reporter_id"], name: "index_proclamations_on_reporter_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "receiver_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_quotes_on_receiver_id"
    t.index ["reporter_id"], name: "index_quotes_on_reporter_id"
  end

  create_table "sources", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "receiver_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_sources_on_receiver_id"
    t.index ["reporter_id"], name: "index_sources_on_reporter_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "bio"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valid_points", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "receiver_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_valid_points_on_receiver_id"
    t.index ["reporter_id"], name: "index_valid_points_on_reporter_id"
  end

end
