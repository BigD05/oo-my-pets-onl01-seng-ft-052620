
 
  class Owner
  attr_reader :name, :species
  
  @@all = []

  def initialize(name, species ="human")
    @species = species
    @name = name
    save
  end
  def save
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end
  
  def self.count
    all.count
  end

  def self.reset_all
    all.clear
  end
def cats 
  Cat.all.select {|cat| cat.owner ==  self } 
end 
def dogs 
  Dog.all.select {|dog| dog.owner == self } 
end 
 
def buy_cat(name)
  Cat.new(name,self)
end 
def buy_dog(name)
  Dog.new(name,self)
end 
def walk_dogs 
  self.dogs.each {|dogs| dogs.mood = "happy"} 
end 
def feed_cats
  self.cats.each {|cats| cats.mood = "happy"} 
end 
def sell_pets 
  self.cats.each do |cat| 
    self.cats.delete(cat)
    return = nil
  end 
end 
    
  
end
 