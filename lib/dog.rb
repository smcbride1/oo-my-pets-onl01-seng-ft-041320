class Dog
  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []

  def initialize(name, new_owner)
    @name = name
    self.owner = new_owner #THE .SELF IN FRONT OF THE OWNER METHOD IS SUPER IMPORTANT!!! OWNER METHOD ISN'T CALLED ON INSTANCE IF SELF ISN'T THERE
    owner = new_owner
    @mood = "nervous"
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def owner=(new_owner)
    owner.pets.delete(self) if owner != nil
    owner.dogs.delete(self) if owner != nil
    @owner = new_owner
    return if owner == nil
    owner.pets.push(self)
    owner.dogs.push(self)
  end
<<<<<<< HEAD
=======

>>>>>>> 735a23c7d65144713aacdbc24f68e64301cc084f
end
