# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_10_01_113443) do
  create_table "opcions", force: :cascade do |t|
    t.string "nombre"
    t.integer "seccion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seccion_id"], name: "index_opcions_on_seccion_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.date "fecha"
    t.string "estado"
    t.integer "usuario_id"
    t.integer "opcion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opcion_id"], name: "index_reservas_on_opcion_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "nombre"
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "resort_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resort_id"], name: "index_seccions_on_resort_id"
  end

  add_foreign_key "opcions", "seccions"
  add_foreign_key "reservas", "opcions"
  add_foreign_key "seccions", "resorts"
end
