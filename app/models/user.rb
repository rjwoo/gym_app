class User < ActiveRecord::Base
  has_secure_password

  has_many :programs, dependent: :destroy

  VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  # validates :phone_number, presence: true, uniqueness: true, format: VALID_PHONE_NUMBER_REGEX
  validates :email, presence: true, uniqueness: true, format: VALID_EMAIL_REGEX

end
