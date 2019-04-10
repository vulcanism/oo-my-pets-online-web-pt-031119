class Owner
  OWNERS = []
  
  attr_accessor :pets
  
  
  
  def initialize
    
  end
  
  def self.all
    OWNERS
  end
  
  def self.reset.all
    OWNERS.clear
  end
end