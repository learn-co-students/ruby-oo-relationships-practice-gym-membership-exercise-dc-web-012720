# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
carl = Lifter.new("Carl", 1165)
andrew = Lifter.new("Andrew", 1000)
sunny = Lifter.new("Sunny", 800)
abod = Lifter.new("Abod", 600)

golds = Gym.new("Golds")
la = Gym.new("LA Fitness")
curves = Gym.new("Curves")
ballston = Gym.new("Ballston Crossfit")

memership1 = Membership.new(carl, ballston, 225)
memership2 = Membership.new(carl, golds, 160)
memership3 = Membership.new(andrew, la, 150)
memership4 = Membership.new(sunny, golds, 160)
memership5 = Membership.new(abod, curves, 100)

binding.pry

puts "Gains!"
