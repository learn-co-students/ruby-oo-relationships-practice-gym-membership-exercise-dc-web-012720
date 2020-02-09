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
    Membership.all.select do |mem|
      mem.lifter == self
    end
  end
  def gyms 
    self.memberships.map do |mem|
      mem.gym
    end
  end 
  def self.total 
    total = 0
    self.all.map do |lifter|
      total += lifter.lift_total
    end
    total
  end
  def self.average
    self.total/self.all.count
  end
  def total_cost
    total = 0
    self.memberships.each do |cost|
      total += cost.cost
    end
    total
  end
  def new_gym(gym, mem_cost)
    Membership.new(mem_cost, gym, self)
  end
end
