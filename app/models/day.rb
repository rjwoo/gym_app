class Day < ActiveRecord::Base
  belongs_to :program

  has_many :exercises, dependent: :destroy
  has_many :workout_logs, dependent: :destroy
  
  accepts_nested_attributes_for :exercises, reject_if: :all_blank,
                                            allow_destroy: true

end
