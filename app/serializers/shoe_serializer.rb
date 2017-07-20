class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :caption
  has_one :user
end
