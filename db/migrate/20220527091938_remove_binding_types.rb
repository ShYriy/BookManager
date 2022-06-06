class RemoveBindingTypes < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      drop_table :binding_types
    end
  end
end
