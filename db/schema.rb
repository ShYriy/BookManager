ActiveRecord::Schema[7.0].define(version: 2022_05_16_140336) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "binding_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "binding_type_id"
    t.integer "pages"
    t.integer "stoc_balance"
    t.date "print_date"
    t.index ["binding_type_id"], name: "index_books_on_binding_type_id"
  end

  create_table "books_authors", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "author_id"
    t.index ["author_id"], name: "index_books_authors_on_author_id"
    t.index ["book_id"], name: "index_books_authors_on_book_id"
  end

end
