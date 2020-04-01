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

ActiveRecord::Schema.define(version: 2020_04_01_165459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "consultations", force: :cascade do |t|
    t.date "date"
    t.string "motif"
    t.text "examenclinique"
    t.text "examencomplementaire"
    t.string "pictures"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "diagfinal"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "medicaments", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "molecule"
    t.string "dosage"
    t.string "unite"
    t.string "forme"
    t.string "presentation"
    t.string "ppv"
    t.string "remboursement"
  end

  create_table "ordonnances", force: :cascade do |t|
    t.date "date"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "consultation_id"
    t.index ["consultation_id"], name: "index_ordonnances_on_consultation_id"
    t.index ["patient_id"], name: "index_ordonnances_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "age"
    t.integer "sexe"
    t.string "nom"
    t.string "prenom"
    t.string "datedenaissance"
    t.string "email"
    t.string "telephone"
    t.string "adresse"
    t.string "cin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "ordonnance_id"
    t.bigint "medicament_id"
    t.string "dose"
    t.string "duree"
    t.index ["medicament_id"], name: "index_prescriptions_on_medicament_id"
    t.index ["ordonnance_id"], name: "index_prescriptions_on_ordonnance_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "prenom"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "consultations", "patients"
  add_foreign_key "consultations", "users"
  add_foreign_key "ordonnances", "consultations"
  add_foreign_key "ordonnances", "patients"
  add_foreign_key "patients", "users"
  add_foreign_key "prescriptions", "medicaments"
  add_foreign_key "prescriptions", "ordonnances"
end
