class WorkoutLog < ActiveRecord::Base
  belongs_to :day

  validates :reps, presence: true

end
