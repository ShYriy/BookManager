class AddUserToBook < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :user, index: true
  end
end
