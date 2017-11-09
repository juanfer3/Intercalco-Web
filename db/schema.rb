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

ActiveRecord::Schema.define(version: 20171109132905) do

  create_table "formula_tintas", force: :cascade do |t|
    t.integer "tinta_id"
    t.integer "tinta_base"
    t.text "descripcion"
    t.float "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tinta_id"], name: "index_formula_tintas_on_tinta_id"
  end

  create_table "lineas_uv", force: :cascade do |t|
    t.string "tipo_de_linea"
    t.string "caracteristica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mallas", force: :cascade do |t|
    t.integer "num_malla"
    t.text "caracteristica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "caracteristica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tintas", force: :cascade do |t|
    t.string "cod"
    t.integer "linea_uv_id"
    t.string "pantone"
    t.integer "malla_id"
    t.integer "producto_id"
    t.string "tipo_de_unidad"
    t.float "cantida"
    t.float "mezcla_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linea_uv_id"], name: "index_tintas_on_linea_uv_id"
    t.index ["malla_id"], name: "index_tintas_on_malla_id"
    t.index ["producto_id"], name: "index_tintas_on_producto_id"
  end

end
