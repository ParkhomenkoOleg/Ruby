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

ActiveRecord::Schema[7.0].define(version: 2023_03_15_130425) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "lastname"
    t.string "date_of_birth"
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_authors_on_book_id"
  end

  create_table "books", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "author"
    t.string "data_release"
    t.integer "library_id", null: false
    t.integer "genre_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "card_readers", force: :cascade do |t|
    t.string "name_library"
    t.string "name_book"
    t.string "date_taking_book"
    t.integer "library_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_card_readers_on_library_id"
    t.index ["user_id"], name: "index_card_readers_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_genres_on_book_id"
  end

  create_table "libraries", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "address"
    t.integer "book_id", null: false
    t.integer "card_reader_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_libraries_on_book_id"
    t.index ["card_reader_id"], name: "index_libraries_on_card_reader_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "lastname"
    t.string "date_of_birth"
    t.integer "card_reader_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_reader_id"], name: "index_users_on_card_reader_id"
  end

  add_foreign_key "authors", "books"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "genres"
  add_foreign_key "books", "libraries"
  add_foreign_key "card_readers", "libraries"
  add_foreign_key "card_readers", "users"
  add_foreign_key "genres", "books"
  add_foreign_key "libraries", "books"
  add_foreign_key "libraries", "card_readers"
  add_foreign_key "users", "card_readers"
end
