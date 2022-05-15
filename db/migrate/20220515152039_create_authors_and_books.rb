class CreateAuthorsAndBooks < ActiveRecord::Migration[7.0]
  def change
    # create_table :books do |t|
    #   t.string :title
    #   t.timestamps
    # end

    # create_table :authors do |t|
    #   t.string :name
    #   t.timestamps
    # end

    create_table :books_authors, id: false do |t|
      t.belongs_to :book
      t.belongs_to :author
    end
  end
end
