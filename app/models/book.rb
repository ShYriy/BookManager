class Book < ApplicationRecord
  has_and_belongs_to_many :authorss
  belongs_to :binding_type

  validates :title, presence: true, length: { minimum: 2 }
  validates :pages_count, presence: true
  validates :stock_balance, presence: true
end
