class User < ActiveRecord::Base
  has_secure_password

  has_many :programs, dependent: :destroy

  VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

  validates :phone_number, presence: true, uniqueness: true, format: { with: VALID_PHONE_NUMBER_REGEX }

end
