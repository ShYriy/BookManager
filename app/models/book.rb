class Book < ApplicationRecord
  has_and_belongs_to_many :authorss
  belongs_to :binding_type

  validates :title, presence: true, length: { minimum: 2 }
  validates :pages, presence: true
  validates :stoc_balance, presence: true
end
