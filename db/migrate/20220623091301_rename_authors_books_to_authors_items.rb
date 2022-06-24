class RenameAuthorsBooksToAuthorsItems < ActiveRecord::Migration[7.0]
  def change
    rename_table :authors_books, :authors_items
  end
end
