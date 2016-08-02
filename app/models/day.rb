class Day < ActiveRecord::Base
  belongs_to :program

  validates :day_number, presence: true

  has_many :exercises, dependent: :destroy
  has_many :workout_logs, dependent: :destroy

  accepts_nested_attributes_for :exercises, reject_if: :all_blank,
                                            allow_destroy: true

end
