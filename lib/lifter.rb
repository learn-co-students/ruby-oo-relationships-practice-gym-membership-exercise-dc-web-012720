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
    Membership.all.select {|mem_obj| mem_obj.lifter == self}
  end

  def gyms
    self.memberships.map {|mem_obj| mem_obj.gym}.uniq
  end

  def self.lift_total
    self.all.sum {|lift_obj|lift_obj.lift_total}
  end

  def self.average_lift_total
    self.lift_total / self.all.count.to_f
  end

  def total_cost
    self.memberships.sum{|mem_obj|mem_obj.cost}
  end

  def create_membership (cost, gym)
    Membership.new(cost, self, gym)
  end



end
