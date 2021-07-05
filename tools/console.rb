# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

vale = Lifter.new("valentin", 100)
jonny = Lifter.new("jonny", 200)

gold = Gym.new("Golds Gym")

vale.signUp(gold, 40)
jonny.signUp(gold, 40)

Lifter.average

binding.pry

puts "Gains!"
