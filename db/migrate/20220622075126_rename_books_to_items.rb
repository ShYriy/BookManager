class RenameBooksToItems < ActiveRecord::Migration[7.0]
  def change
    rename_table :books, :items
  end
end
