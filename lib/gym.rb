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
    Membership.all.select {|mem_obj| mem_obj.gym == self}
  end

  def lifters
    self.memberships.map {|mem_obj| mem_obj.lifter}
  end

  def lifter_names
    self.lifters.map {|lifter_obj| lifter_obj.name}
  end

  def lift_total
    self.lifters.sum {|lifter_obj| lifter_obj.lift_total}
  end

end
