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

ActiveRecord::Schema.define(version: 20160212232505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.integer "user_id", null: false
  end

  add_index "collections", ["user_id"], name: "fki_users", using: :btree

  create_table "collectionsdetails", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "magiccard_id"
    t.integer "condition_id",  default: 1
    t.text    "language",      default: "EN",  null: false
    t.boolean "foil",          default: false
    t.boolean "signed",        default: false
    t.boolean "altered",       default: false
    t.integer "amount",        default: 1,     null: false
  end

  add_index "collectionsdetails", ["collection_id"], name: "FKI_collections_magiccards_collections", using: :btree
  add_index "collectionsdetails", ["condition_id"], name: "FKI_collectionsdetails_condition", using: :btree
  add_index "collectionsdetails", ["magiccard_id"], name: "FKI_collections_magiccards_magiccards", using: :btree

  create_table "conditions", force: :cascade do |t|
    t.text "condition"
    t.text "Guide_Text"
  end

  create_table "magiccards", force: :cascade do |t|
    t.integer "magicset_id"
    t.text    "cardname"
    t.text    "cardtype"
    t.text    "cardrarity"
    t.text    "cardmanacost"
    t.text    "cardconvertedmanacost"
    t.text    "cardpower"
    t.text    "cardtoughness"
    t.text    "cardloyality"
    t.text    "cardability"
    t.text    "cardflavortext"
    t.text    "cardvariationnumber"
    t.text    "cardartist"
    t.text    "cardnumber"
    t.text    "cardrating"
    t.text    "cardruling"
    t.text    "cardcolor"
    t.text    "cardmanagenerated"
    t.text    "cardpricelow"
    t.text    "cardpricemid"
    t.text    "cardpricehigh"
    t.text    "cardbackid"
    t.text    "cardwatermark"
    t.text    "cardnumberofprints"
    t.text    "cardoriginal"
    t.text    "cardnameforeign_cn"
    t.text    "cardnameforeign_tw"
    t.text    "cardnameforeign_fr"
    t.text    "cardnameforeign_de"
    t.text    "cardnameforeign_it"
    t.text    "cardnameforeign_jp"
    t.text    "cardnameforeign_pt"
    t.text    "cardnameforeign_ru"
    t.text    "cardnameforeign_es"
    t.text    "cardnameforeign_ko"
    t.text    "cardtypeforeigncn"
    t.text    "cardtypeforeigntw"
    t.text    "cardtypeforeignfr"
    t.text    "cardtypeforeignde"
    t.text    "cardtypeforeignit"
    t.text    "cardtypeforeignjp"
    t.text    "cardtypeforeignpt"
    t.text    "cardtypeforeignru"
    t.text    "cardtypeforeignes"
    t.text    "cardtypeforeignko"
    t.text    "cardabilityforeign_cn"
    t.text    "cardabilityforeign_tw"
    t.text    "cardabilityforeign_fr"
    t.text    "cardabilityforeign_de"
    t.text    "cardabilityforeign_it"
    t.text    "cardabilityforeign_jp"
    t.text    "cardabilityforeign_pt"
    t.text    "cardabilityforeign_ru"
    t.text    "cardabilityforeign_es"
    t.text    "cardabilityforeign_ko"
    t.text    "cardflavourforeign_cn"
    t.text    "cardflavourforeign_tw"
    t.text    "cardflavourforeign_fr"
    t.text    "cardflavourforeign_de"
    t.text    "cardflavourforeign_it"
    t.text    "cardflavourforeign_jp"
    t.text    "cardflavourforeign_pt"
    t.text    "cardflavourforeign_ru"
    t.text    "cardflavourforeign_es"
    t.text    "cardflavourforeign_ko"
    t.text    "cardlegality_block"
    t.text    "cardlegality_standard"
    t.text    "cardlegality_modern"
    t.text    "cardlegality_legacy"
    t.text    "cardlegality_vintage"
    t.text    "cardlegality_highlander"
    t.text    "cardlegality_french_commander"
    t.text    "cardlegality_tiny_leaders_commander"
    t.text    "cardlegality_modern_duel_commander"
    t.text    "cardlegality_commander"
    t.text    "cardlegality_peasant"
    t.text    "cardlegality_pauper"
  end

  add_index "magiccards", ["magicset_id"], name: "FKI_magicsets_magiccards", using: :btree

  create_table "magicsets", force: :cascade do |t|
    t.text "setname"
    t.text "setcode_mcinfo"
    t.text "setreleasedate"
    t.text "setpromoindicator"
    t.text "setboosterpackaging_nm"
    t.text "setboosterpackaging_nr"
    t.text "setboosterpackaging_nu"
    t.text "setboosterpackaging_nc"
    t.text "setboosterpackaging_ne"
    t.text "setboosterpackaging_pm"
    t.text "setboosterpackaging_pr"
    t.text "setboosterpackaging_typeextra1"
    t.text "setboosterpackaging_typeextra2"
    t.text "setboosterpackaging_listextra1"
    t.text "setboosterpackaging_listextra2"
    t.text "setboosterpackaging_has_foil"
    t.text "setboosterpackaging_pf"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", limit: 255
    t.string   "remember_digest", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "collections", "users", name: "FK_collection_user"
  add_foreign_key "collectionsdetails", "collections", name: "FK_collections_magiccards_collections"
  add_foreign_key "collectionsdetails", "conditions", name: "FK_collectionsdetails_condition"
  add_foreign_key "collectionsdetails", "magiccards", name: "FK_collections_magiccards_magiccards"
  add_foreign_key "magiccards", "magicsets", name: "FK_magicsets_magiccards"
end
