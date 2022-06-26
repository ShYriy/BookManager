class Item < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :user

  validates :title, presence: true, length: { minimum: 2 }
  validates :pages_count, presence: true
  validates :stock_balance, presence: true
end
