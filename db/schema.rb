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

ActiveRecord::Schema[7.0].define(version: 2024_10_17_134350) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activites", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.date "date_debut"
    t.date "date_fin"
    t.bigint "projet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projet_id"], name: "index_activites_on_projet_id"
  end

  create_table "apport_locals", force: :cascade do |t|
    t.decimal "montant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autres_depenses", force: :cascade do |t|
    t.bigint "apport_local_id", null: false
    t.string "titre"
    t.decimal "montant"
    t.text "description"
    t.date "date_jour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "devise"
    t.index ["apport_local_id"], name: "index_autres_depenses_on_apport_local_id"
  end

  create_table "employe_activites", force: :cascade do |t|
    t.bigint "employe_id", null: false
    t.bigint "activite_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activite_id"], name: "index_employe_activites_on_activite_id"
    t.index ["employe_id"], name: "index_employe_activites_on_employe_id"
  end

  create_table "employes", force: :cascade do |t|
    t.string "nom"
    t.string "post_nom"
    t.string "contact"
    t.string "mail"
    t.text "adresses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financements", force: :cascade do |t|
    t.bigint "partenaire_id", null: false
    t.bigint "projet_id", null: false
    t.decimal "montant"
    t.string "num_bordereau"
    t.string "banque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partenaire_id"], name: "index_financements_on_partenaire_id"
    t.index ["projet_id"], name: "index_financements_on_projet_id"
  end

  create_table "historique_apports", force: :cascade do |t|
    t.decimal "montant_recu"
    t.bigint "membre_conseil_id", null: false
    t.date "date_jour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "devise"
    t.index ["membre_conseil_id"], name: "index_historique_apports_on_membre_conseil_id"
  end

  create_table "membre_conseils", force: :cascade do |t|
    t.string "nom"
    t.string "post_nom"
    t.string "contact"
    t.string "mail"
    t.text "adresses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partenaires", force: :cascade do |t|
    t.string "nom"
    t.string "contact"
    t.string "mail"
    t.text "adresse"
    t.string "type_partenaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projets", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.date "date_debut"
    t.date "date_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "statut", default: "non financé"
  end

  create_table "salaires", force: :cascade do |t|
    t.bigint "employe_id", null: false
    t.integer "mois"
    t.integer "annee"
    t.decimal "montant"
    t.date "date_jour"
    t.bigint "apport_local_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apport_local_id"], name: "index_salaires_on_apport_local_id"
    t.index ["employe_id"], name: "index_salaires_on_employe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role", default: "", null: false
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "activites", "projets"
  add_foreign_key "autres_depenses", "apport_locals"
  add_foreign_key "employe_activites", "activites"
  add_foreign_key "employe_activites", "employes"
  add_foreign_key "financements", "partenaires"
  add_foreign_key "financements", "projets"
  add_foreign_key "historique_apports", "membre_conseils"
  add_foreign_key "salaires", "apport_locals"
  add_foreign_key "salaires", "employes"
end
