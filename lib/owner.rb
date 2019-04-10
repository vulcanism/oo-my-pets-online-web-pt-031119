class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each { |d| d.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy" }
  end
  
  def feed_fish
    @pets[:fishes].each { |f| f.mood = "happy" }
  end
  
  def sell_pets
    @pets[:dogs].each { |d| d.mood = "nervous" }
    @pets[:cats].each { |c| c.mood = "nervous" }
    @pets[:fishes].each { |f| f.mood = "nervous" }
    @pets.clear
    #You monster
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
end