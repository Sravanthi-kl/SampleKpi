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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150721170919) do

  create_table "addlinkkpis", :force => true do |t|
    t.integer  "jbbranch_id",   :precision => 38, :scale => 0
    t.integer  "kpi_id",        :precision => 38, :scale => 0
    t.string   "jbbrnachname"
    t.string   "kpi_name"
    t.string   "kpi_frequency"
    t.string   "kpi_category"
    t.integer  "kpi_target",    :precision => 38, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "businesskpis", :force => true do |t|
    t.integer  "kpi_id",       :precision => 38, :scale => 0
    t.integer  "jbbranch_id",  :precision => 38, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "branchname"
    t.string   "kpiname"
    t.string   "kpifrequency"
    t.string   "kpicategory"
  end

  add_index "businesskpis", ["jbbranch_id"], :name => "i_businesskpis_jbbranch_id"
  add_index "businesskpis", ["kpi_id"], :name => "index_businesskpis_on_kpi_id"

  create_table "details", :force => true do |t|
    t.string   "day"
    t.integer  "actual",            :precision => 38, :scale => 0
    t.integer  "target",            :precision => 38, :scale => 0
    t.integer  "target_percentage", :precision => 38, :scale => 0
    t.text     "notes"
    t.integer  "kpi_id",            :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "businesskpi_id",    :precision => 38, :scale => 0
    t.integer  "jbbranch_id",       :precision => 38, :scale => 0
    t.string   "branchname"
  end

  add_index "details", ["kpi_id"], :name => "index_details_on_kpi_id"

  create_table "details_temp", :id => false, :force => true do |t|
    t.integer  "id",                :precision => 38, :scale => 0, :null => false
    t.string   "today"
    t.integer  "actual",            :precision => 38, :scale => 0
    t.integer  "target",            :precision => 38, :scale => 0
    t.integer  "target_percentage", :precision => 38, :scale => 0
    t.text     "notes"
    t.integer  "kpi_id",            :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "franchisemasters", :force => true do |t|
    t.string   "franchisetype"
    t.string   "franchisename"
    t.string   "franchiseename"
    t.string   "owneremailid"
    t.datetime "openingdate"
    t.datetime "effectivefrom"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "owneraddress"
  end

  create_table "jb_branches", :force => true do |t|
    t.string   "branchname"
    t.string   "branchtype"
    t.string   "shortname"
    t.string   "city"
    t.string   "branchaddress"
    t.string   "contactnumbers"
    t.string   "workinghours"
    t.string   "maplink"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "kpis", :force => true do |t|
    t.string   "kpiname"
    t.string   "kpifrequency"
    t.string   "kpiformat"
    t.string   "kpidirection"
    t.integer  "kpitarget",    :precision => 38, :scale => 0
    t.string   "kpicategory"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
    t.boolean  "active",       :precision => 1,  :scale => 0, :default => true
  end

  create_table "registerreports", :force => true do |t|
    t.string   "user_id"
    t.string   "kpiname"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
