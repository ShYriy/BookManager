class AddCoverToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :cover, :integer
  end
end
