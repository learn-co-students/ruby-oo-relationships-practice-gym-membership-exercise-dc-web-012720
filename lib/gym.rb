class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def memberships
    Membership.all.select do |mem|
      mem.gym == self
    end
  end
  def lifters
    self.memberships.map do |mem|
      mem.lifter
    end
  end
  def lifters_name
    self.memberships.map do |mem|
      mem.lifter.name
    end
  end
  def combined_total
    total = 0 
    self.memberships.select do |tlift|
      total += tlift.lifter.lift_total
    end
    total
  end
end

