class User < ApplicationRecord
  has_many :books

  enum role: {
    user: 1,
    admin: 2,
    consumer: 3
  }

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, length: { minimum: 2 }
end
