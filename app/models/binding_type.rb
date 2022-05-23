class BindingType < ApplicationRecord
  has_many :books

  validates :title, presence: true, length: { minimum: 2 }
end
