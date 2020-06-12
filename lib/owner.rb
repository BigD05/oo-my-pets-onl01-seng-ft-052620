
 
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
def list_pets 
  puts  Cat.all 
   
  puts Dog.all 
end 
def buy_cat 
  buy_cat = Cat.new(name) 
  list_pets.each do |name| 
    if Cat.name
      buy_cat
    end 
  end 
end 
    
  
end
 