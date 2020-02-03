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
    Membership.all.select do |memberships| 
      memberships.gym == self
    end
  end

  def lifters
    self.memberships.map do |memberships|
      memberships.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifters|
      lifters.name
    end
  end

  def lifter_total
    self.lifters.map do |lifters|
      lifters.lift_total
    end.sum
  end

end
