class Owner
  attr_accessor :pets
  
  OWNERS = []
  
  def self.all
    OWNERS
  end
  
  def self.reset_all
    OWNERS.clear
  end
end