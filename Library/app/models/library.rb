class Library < ApplicationRecord
  has_many :books
  has_many :card_readers
end
