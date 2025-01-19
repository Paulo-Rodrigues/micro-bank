class User < ApplicationRecord
  has_secure_password
  validates :password, :password_confirmation, length: { minimum: 6 }
  validates :email, format: URI::MailTo::EMAIL_REGEXP, uniqueness: true, presence: true
end
