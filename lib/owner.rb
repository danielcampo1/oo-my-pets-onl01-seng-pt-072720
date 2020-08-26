class Owner
   
   @@all = []
  
   attr_reader :name, :species
   
   def initialize(name)
    @name = name
    @species = "human"
    @@all << self
   end
    
    def say_species
       "I am a human."
    end
    
    def self.all
      @@all
    end
    
    def self.count
      Owner.all.count
    end
    
    def self.reset_all
      all.clear
    end
    
    def cat
       Cat.all.select { |cats| cats.owner }
         
  end
  
  
  
end