class Category < ApplicationRecord
  belongs_to :destination
  validates :title, uniqueness: true
end
