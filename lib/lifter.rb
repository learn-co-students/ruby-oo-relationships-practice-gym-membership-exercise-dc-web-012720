class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |memberships|
      memberships.lifter == self
    end
  end

  def gyms
    self.memberships.map do |memberships|
      memberships.gym
    end
  end

  def self.average
    self.all.map do |lifters|
      lifters.lift_total
    end.sum / Lifter.all.count
  end

  def total_cost
    self.memberships.map do |memberships|
      memberships.cost
    end.sum
  end

  def new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end
    

end
