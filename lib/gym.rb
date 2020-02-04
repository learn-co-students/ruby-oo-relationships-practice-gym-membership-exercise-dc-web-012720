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
  def members
    Membership.all.select{|members| members.gym == self}
  end
  def gymMembers
    members.map{|members| members.lifter}
  end
  def gymMembersName
    gymMembers.map{|lifter| lifter.name}
  end
  def memberTotal
    gymMembers.map{|lifter| lifter.lift_total}.sum
  end
end
