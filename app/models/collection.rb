class Collection < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :connect, dependent: :destroy
  has_many :shoes, through: :connect
end
