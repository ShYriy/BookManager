class AddColunmToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :pages, :integer
    add_column :books, :stoc_balance, :integer
    add_column :books, :print_date, :date
  end
end
