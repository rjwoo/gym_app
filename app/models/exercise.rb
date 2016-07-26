class Exercise < ActiveRecord::Base
  belongs_to :day

  validates :exercise_name, presence: true, uniqueness: true
  validates :sets, presence: true
end
