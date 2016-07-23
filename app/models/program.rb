class Program < ActiveRecord::Base
  belongs_to :user

  validates :program_name, presence: true
end
