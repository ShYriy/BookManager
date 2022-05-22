class RenameColumnInBook < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.rename :pages, :pages_count
      t.rename :stoc_balance, :stock_balance
    end
  end
end
