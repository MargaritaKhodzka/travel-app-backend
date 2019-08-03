class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :destination_id
  belongs_to :destination
end
