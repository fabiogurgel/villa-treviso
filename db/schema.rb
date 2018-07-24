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

ActiveRecord::Schema.define(version: 20180724034407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencia", force: :cascade do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "area_comuns", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "descricao"
    t.string   "localizacao"
    t.integer  "quantidade_reserva"
    t.integer  "tipo_area_comum_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["tipo_area_comum_id"], name: "index_area_comuns_on_tipo_area_comum_id", using: :btree
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta", force: :cascade do |t|
    t.integer  "agencia_id"
    t.integer  "cliente_id"
    t.string   "codigo"
    t.string   "descricao"
    t.float    "saldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agencia_id"], name: "index_conta_on_agencia_id", using: :btree
    t.index ["cliente_id"], name: "index_conta_on_cliente_id", using: :btree
  end

  create_table "tipo_area_comuns", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "area_comuns", "tipo_area_comuns"
  add_foreign_key "conta", "agencia"
  add_foreign_key "conta", "clientes"
end
