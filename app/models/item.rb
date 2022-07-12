class Item < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :user

  def author_names
    authors.map(&:name).join(' ')
  end
end
