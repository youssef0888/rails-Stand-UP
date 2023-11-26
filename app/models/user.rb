class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations
  has_many :events, through: :reservations
  has_many :events
  has_one :establishments

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :profile, presence: true, inclusion: { in: ["Customer", "Comedian", "Owner"] }
end
