class Owner
  attr_accessor :pets
  
  OWNERS = []
  
  def initialize
    
  end
  
  def self.all
    OWNERS
  end
end