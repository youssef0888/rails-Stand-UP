class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :profile, presence: true, inclusion: { in: ["Customer", "Comedian", "Owner"] }
end
