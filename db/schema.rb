# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090209215602) do

  create_table "charts", :force => true do |t|
    t.string   "title"
    t.string   "thing1"
    t.string   "thing2"
    t.string   "thing3"
    t.string   "thing4"
    t.string   "thing5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "thing1amount"
    t.integer  "thing2amount"
    t.integer  "thing3amount"
    t.integer  "thing4amount"
    t.integer  "thing5amount"
  end

  create_table "things", :force => true do |t|
    t.string   "slice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
