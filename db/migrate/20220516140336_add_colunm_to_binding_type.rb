class AddColunmToBindingType < ActiveRecord::Migration[7.0]
  def change
      add_column :binding_types, :title, :string
  end
end
