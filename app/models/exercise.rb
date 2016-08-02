class Exercise < ActiveRecord::Base
  belongs_to :day

  has_many :workout_logs

  validates :exercise_name, presence: true
end
