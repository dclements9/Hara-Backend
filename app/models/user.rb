class User < ApplicationRecord
    has_secure_password

#  TODO: Add password_digest to password
#   Removed before StudentPortal is ready

  validates :email, :password_digest, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  # validates :password, length: { minimum: 8 }
end
