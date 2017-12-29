class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
