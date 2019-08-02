class Destination < ApplicationRecord
  has_many :categories
  validates :name, presence: true, uniqueness: true
end
