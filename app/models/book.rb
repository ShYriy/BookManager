class Book < Item
  enum cover: {
    hard: 1,
    soft: 2
  }

  validates :title, presence: true, length: { minimum: 2 }
  validates :pages_count, presence: true
  validates :stock_balance, presence: true
end
