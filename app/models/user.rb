class User < ApplicationRecord
  has_many :articles
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitivity: false},
  length: { minimum: 3, maximum: 15}
  validates :email, presence: true, uniqueness: { case_sensitivity: false},
  length: { maximum: 200}, format: { with: VALID_EMAIL_REGEX }
end
