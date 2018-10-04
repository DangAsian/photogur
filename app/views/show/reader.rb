class Reader < ApplicationRecord
  has_and_belongs_to_many :books
  # has_many :book_readers, through: :books
end
