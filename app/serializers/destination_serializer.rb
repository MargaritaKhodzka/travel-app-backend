class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :image, :visited
  has_many :categories
end
