class ChangeBooksAuthorsToAuthorsBooks < ActiveRecord::Migration[7.0]
  def change
    rename_table :books_authors, :authors_books
  end
end
