class RemoveColumnFromBooks < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.remove :binding_type_id
    end
  end
end
