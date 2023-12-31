class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations
  has_many :events, through: :reservations
  has_many :events
  has_one :establishment

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile, presence: true, inclusion: { in: ["Customer", "Comedian", "Owner"] }
end
