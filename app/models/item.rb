class Item < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :user
end
