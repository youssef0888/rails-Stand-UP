class Event < ApplicationRecord
  has_one :user
  has_one :establishments
  has_many :reservations
end
