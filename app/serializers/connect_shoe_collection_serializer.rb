class ConnectShoeCollectionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :shoe
  has_one :collection
end
