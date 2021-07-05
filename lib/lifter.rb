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
    Membership.all.select{|member| member.lifter == self}
  end
  def lifterGyms
    memberships.map{|gyms| gyms.gym}
  end
  def self.average
    liferList = self.all.map{|lifter| lifter.lift_total}
    lift_total = liferList.sum.to_f
    lift_size = liferList.length.to_f
    lift_total / lift_size
  end
  def gymCost
    total = 0
    memberships.each{|gyms| total += gyms.cost}
    total
  end
  def signUp(gym, cost)
    Membership.new(self, gym, cost)
  end
end
