class Collection < ApplicationRecord
  belongs_to :user

  has_many :connect_shoe_collections
  has_many :shoes, through: :connect_shoe_collection
end
