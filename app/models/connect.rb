class Connect < ApplicationRecord
  belongs_to :user
  belongs_to :shoe
  belongs_to :collection
  validates :user, presence: true
  validates_uniqueness_of :user, scope: %i[collection_id shoe_id]
end
