class Exercise < ActiveRecord::Base
  belongs_to :day
    
  validates :exercise_name, presence: true
end
