class Book < ApplicationRecord
  has_and_belongs_to_many :authorss
  belongs_to :binding_type
end
