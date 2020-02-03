class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships 
    Membership.all.select { |membership| membership.lifter == self }
  end 

  def gyms
    self.memberships.map { |membership| membership.gym }
  end
  
  def self.avg_lift_total
    total_avg_lift = self.all.map {|lift| lifter.lift_total}.sum
    total_avg_lift / self.all.count
  end 

  def total_cost_membership
    self.memberships.sum { |membership| membership.cost}
  end 

  def change_gym(cost, gym)
    Membership.new(cost, self, gym)
  end 

  def self.all
    @@all
  end 
end
