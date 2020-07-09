class Routine < ApplicationRecord
  # validates :reps, presence: true
  # validates :sets, presence: true
  has_many :exercise_routines
  has_many :exercises, through: :exercise_routines
end
