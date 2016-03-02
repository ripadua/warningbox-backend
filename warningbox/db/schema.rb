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

ActiveRecord::Schema.define(version: 20160301032914) do

  create_table "estabelecimentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foto_produtos", force: :cascade do |t|
    t.binary   "imagem"
    t.date     "dataVencimento"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "historico_produtos", force: :cascade do |t|
    t.integer  "produto_id"
    t.date     "dataVencimento"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "historico_produtos", ["produto_id"], name: "index_historico_produtos_on_produto_id"

  create_table "marcas", force: :cascade do |t|
    t.string   "nomeMarca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nomeProduto"
    t.binary   "fotoProduto"
    t.integer  "marca_id"
    t.integer  "usuario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "produtos", ["marca_id"], name: "index_produtos_on_marca_id"
  add_index "produtos", ["usuario_id"], name: "index_produtos_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email"
    t.string   "nome"
    t.string   "nomeEmpresa"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vencimentos", force: :cascade do |t|
    t.binary   "imagem"
    t.date     "dataVencimento"
    t.integer  "estabelecimento_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "vencimentos", ["estabelecimento_id"], name: "index_vencimentos_on_estabelecimento_id"

end
