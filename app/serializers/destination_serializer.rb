class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :image
  has_many :categories
end
