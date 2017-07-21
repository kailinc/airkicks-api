class Shoe < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :connect_shoe_collections
  has_many :collections, through: :connect_shoe_collection
end
