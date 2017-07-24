class Collection < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :connect_shoe_collection, dependent: :destroy
  has_many :shoes, through: :connect_shoe_collection
end
