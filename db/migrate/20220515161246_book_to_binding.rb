class BookToBinding < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :binding_type
  end
end
