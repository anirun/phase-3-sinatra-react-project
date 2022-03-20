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

ActiveRecord::Schema.define(version: 2022_03_18_231348) do

  create_table "assignments", force: :cascade do |t|
    t.string "assignment_name"
    t.boolean "completed", default: false
    t.integer "grade"
    t.integer "teacher_id"
    t.integer "student_id"
    t.datetime "created_at"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.string "grade"
    t.datetime "created_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_name"
    t.string "subject"
  end

end
