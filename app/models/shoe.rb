class Shoe < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :connect, dependent: :destroy
  has_many :collections, through: :connect
end
