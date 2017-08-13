class ConnectSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :shoe
  has_one :collection

  def editable
    scope == object.user
  end
end
