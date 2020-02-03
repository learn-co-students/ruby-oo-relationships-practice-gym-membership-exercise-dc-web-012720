# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lauren = Lifter.new("Lauren", 60)
chris = Lifter.new("Chris", 120)
audrey = Lifter.new("Audrey", 95)

cool_gym = Gym.new("Cool Gym")
smelly_gym = Gym.new("Smelly Gym")
cheap_gym = Gym.new("Cheap Gym")

mem1 = Membership.new(20, lauren, cool_gym)
mem2 = Membership.new(5, chris, smelly_gym)
mem3 = Membership.new(5, audrey, smelly_gym)
mem4 = Membership.new(8, audrey, cheap_gym)

lauren.create_membership(8, cheap_gym)

binding.pry

puts "Gains!"
