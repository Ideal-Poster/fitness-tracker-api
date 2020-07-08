class Routine < ApplicationRecord
  # validates :reps, presence: true
  # validates :sets, presence: true
  has_many :exercises_routines
  has_many :exercises, through: :exercises_routines
end
