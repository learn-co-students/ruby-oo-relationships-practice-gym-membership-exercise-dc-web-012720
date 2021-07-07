# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Alex", 20)
l2 = Lifter.new("John", 15)
l3 = Lifter.new("Tim", 10)


g1 = Gym.new("Lifetime")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("YMCA")

m1 = Membership.new(36, l1, g1)
m2 = Membership.new(40, l2, g2)
m3 = Membership.new(50, l3, g3)
m4 = Membership.new(50, l2, g3)
binding.pry

puts "Gains!"
