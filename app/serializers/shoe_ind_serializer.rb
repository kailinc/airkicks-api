class ShoeIndSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :caption, :user
end
