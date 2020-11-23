class User < ApplicationRecord
  EMAIL_PATTERN = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :email, format: {with: EMAIL_PATTERN}, presence: true
  validates :name, presence: true
end
