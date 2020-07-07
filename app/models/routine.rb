class Routine < ApplicationRecord
  validates :user, presence: true
  validates :reps, presence: true
  validates :sets, presence: true
  has_many :exercise_routines
  has_many :exercises, through: :exercise_routines
  belongs_to :user
end
