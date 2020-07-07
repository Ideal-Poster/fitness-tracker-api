# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user1 = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)
user2 = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)
user3 = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)
user4 = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)
user5 = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)

pushups = Exercise.create(name: "pushup", muscle_group: "arms")
situps = Exercise.create(name: "situp", muscle_group: "core")
squats = Exercise.create(name: "squats", muscle_group: "legs")
leg_raises = Exercise.create(name: "leg raises", muscle_group: "core")
jumping_jacks = Exercise.create(name: "jumping jacks", muscle_group: "cardio")

routine1 = Routine.create(name: "leg day", reps: 10, sets: 5, user: user1)
routine2 = Routine.create(name: "upperbody workout", reps: 10, sets: 5, user: user1)

ExerciseRoutine.create(exercise: jumping_jacks, routine: routine1)
ExerciseRoutine.create(exercise: squats, routine: routine1)
ExerciseRoutine.create(exercise: leg_raises, routine: routine1)

ExerciseRoutine.create(exercise: pushups, routine: routine2)
ExerciseRoutine.create(exercise: situps, routine: routine2)
ExerciseRoutine.create(exercise: jumping_jacks, routine: routine2)