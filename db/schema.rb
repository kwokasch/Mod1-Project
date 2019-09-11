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

ActiveRecord::Schema.define(version: 2019_09_09_222241) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "date"
    t.string "time"
    t.string "location"
  end

  create_table "mood_events", force: :cascade do |t|
    t.integer "mood_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_mood_events_on_event_id"
    t.index ["mood_id"], name: "index_mood_events_on_mood_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "name"
  end

end
