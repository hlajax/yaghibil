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

ActiveRecord::Schema.define(version: 2020_03_02_102327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administrateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrateurs_on_reset_password_token", unique: true
  end

  create_table "autoexpenses", force: :cascade do |t|
    t.integer "price"
    t.text "description"
    t.string "travaux"
    t.string "designation"
    t.datetime "billed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "administrateur_id"
    t.integer "automobile_id"
  end

  create_table "autoincomes", force: :cascade do |t|
    t.integer "price"
    t.text "description"
    t.string "travaux"
    t.string "designation"
    t.datetime "billed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "administrateur_id"
    t.integer "automobile_id"
  end

  create_table "automobiles", force: :cascade do |t|
    t.string "marque"
    t.string "modele"
    t.string "couleur"
    t.string "matricule"
    t.string "prix"
    t.bigint "administrateur_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "billed_at"
    t.index ["administrateur_id"], name: "index_automobiles_on_administrateur_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depenses", force: :cascade do |t|
    t.string "designation"
    t.text "travaux"
    t.string "prix"
    t.datetime "billed_at"
    t.bigint "automobile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "administrateur_id"
    t.index ["automobile_id"], name: "index_depenses_on_automobile_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "billed_at"
    t.string "titre"
    t.integer "category_id"
    t.integer "source_id"
    t.integer "administrateur_id"
  end

  create_table "fonds", force: :cascade do |t|
    t.string "titre"
    t.integer "montant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incategories", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.string "titre"
    t.integer "price"
    t.text "description"
    t.datetime "billed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "source_id"
    t.integer "category_id"
    t.integer "incategory_id"
    t.integer "administrateur_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "automobiles", "administrateurs"
  add_foreign_key "depenses", "automobiles"
end
