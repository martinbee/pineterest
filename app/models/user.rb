class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true, length: { minimum: 6 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX }
  has_many :pins
  has_secure_password
end
