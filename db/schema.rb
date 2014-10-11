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

ActiveRecord::Schema.define(version: 20141011165728) do

  create_table "disciplinas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudantes", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presencas", force: true do |t|
    t.integer  "estudante_id"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "presencas", ["disciplina_id"], name: "index_presencas_on_disciplina_id"
  add_index "presencas", ["estudante_id"], name: "index_presencas_on_estudante_id"

end
