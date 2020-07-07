class Exercise < ApplicationRecord
  validates :name, uniqueness: :true
  has_many :exercise_routines
  has_many :routine, through: :exercise_routines
end
