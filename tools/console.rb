# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Gold's")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Bally's")

lift1 = Lifter.new("James",170)
lift2 = Lifter.new("Tony",120)
lift3 = Lifter.new("Peter",270)

mem1 = Membership.new(10, gym2, lift1)
mem2 = Membership.new(30, gym1, lift3)
mem3 = Membership.new(50, gym3, lift2)
mem4 = Membership.new(70, gym2, lift3)
mem5 = Membership.new(90, gym3, lift1)

binding.pry

puts "Gains!"
