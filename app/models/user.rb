# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :shoes
  has_many :collections
  has_many :connects
end
