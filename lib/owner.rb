class Owner
  attr_accessor :pets
  attr_reader :species
  
  OWNERS = []
  
  def initialize(species)
    @species = species
    OWNERS << self
    @pets => {
  end
  
  def self.all
    OWNERS
  end
  
  def self.reset_all
    OWNERS.clear
  end
  
end