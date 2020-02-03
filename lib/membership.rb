class Membership
  attr_reader :cost, :lifter, :gym
  @@all = []

  def initialize(cost, lifter_obj, gym_obj)
    @cost = cost
    @lifter = lifter_obj
    @gym = gym_obj
    @@all << self
  end

  def self.all
    @@all
  end

end
