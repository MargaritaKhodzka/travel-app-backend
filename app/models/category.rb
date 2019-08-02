class Category < ApplicationRecord
  belongs_to :destination
  validates :name, uniqueness: true
end
