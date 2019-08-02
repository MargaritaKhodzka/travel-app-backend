class Category < ApplicationRecord
  belongs_to :destination
  validates :title, presence: true
end
