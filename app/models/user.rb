class User < ApplicationRecord
  EMAIL_FORMAT = /[^\s]@[^\s]/
  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: EMAIL_FORMAT }, uniqueness: true

  has_many :ads
end
