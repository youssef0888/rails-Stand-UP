class Event < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  has_many :reservations
end
