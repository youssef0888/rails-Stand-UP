class Establishment < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :user
  validates :name , presence: true, uniqueness: true
end
