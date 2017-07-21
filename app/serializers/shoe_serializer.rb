class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :caption, :user
end
