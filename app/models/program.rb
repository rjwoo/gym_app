class Program < ActiveRecord::Base
  belongs_to :user

  has_many :days, dependent: :destroy

  validates :program_name, presence: true
end
