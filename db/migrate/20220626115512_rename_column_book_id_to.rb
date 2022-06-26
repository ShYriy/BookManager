class RenameColumnBookIdTo < ActiveRecord::Migration[7.0]
  def change
    change_table :authors_items do |t|
      t.rename :book_id, :item_id
    end
  end
end
