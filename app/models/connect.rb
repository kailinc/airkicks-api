class Connect < ApplicationRecord
  belongs_to :user
  belongs_to :shoe
  belongs_to :collection
  validates :user, presence: true
end
