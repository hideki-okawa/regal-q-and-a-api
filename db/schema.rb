# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_19_085816) do

  create_table "answers", force: :cascade do |t|
    t.integer "questions_id", null: false
    t.text "coomment", null: false
    t.string "user_name", null: false
    t.boolean "is_lawyer", default: false
    t.integer "helpful_count", default: 0
    t.index ["questions_id"], name: "index_answers_on_questions_id"
  end

  create_table "best_answers", force: :cascade do |t|
    t.integer "answers_id", null: false
    t.integer "questions_id", null: false
    t.index "\"answer_id\", \"question_id\"", name: "index_best_answers_on_answer_id_and_question_id", unique: true
    t.index ["answers_id"], name: "index_best_answers_on_answers_id"
    t.index ["questions_id"], name: "index_best_answers_on_questions_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.string "user_name", null: false
  end

  add_foreign_key "best_answers", "answers", column: "answers_id"
  add_foreign_key "best_answers", "questions", column: "questions_id"
end