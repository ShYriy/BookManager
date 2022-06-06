class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         # :confirmable,
         :validatable

  has_many :books

  enum role: {
    user: 1,
    admin: 2,
    consumer: 3
  }

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, length: { minimum: 2 }
end
