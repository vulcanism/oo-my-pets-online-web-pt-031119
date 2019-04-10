class Owner
  attr_accessor :pets
  
  OWNERS = []
  
  def self.all
    OWNERS
  end
  
  def self.reset.all
    OWNERS.clear
  end
end