class WorkoutLog < ActiveRecord::Base
  belongs_to :user

  has_many :days, dependent: :destroy
end
