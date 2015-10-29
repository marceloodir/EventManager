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

ActiveRecord::Schema.define(version: 20151029120625) do

  create_table "events", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "data"
    t.integer  "criador_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "events", ["criador_id"], name: "index_events_on_criador_id"

  create_table "managers", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.integer  "evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participants", ["evento_id"], name: "index_participants_on_evento_id"

end
