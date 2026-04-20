class Person
  MAX_HEALTH = 120

  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def heal
      self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end

class Viking  < Person
  attr_accessor :name, :age, :health, :strength, :weapon

  def initialize(name, age, health, strength, weapon)
    super(name, age, health, strength)
    @weapon = weapon
  end

  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    weapon = ["Axe","Sword","Fist"].sample
    Viking.new(name, health, age, strength, weapon)
  end

  def self.random_name
    ["Erik","Lars","Leif"].sample
  end

  def self.silver_to_gold(silver_pieces)
      silver_pieces / 10
  end

  class << self
      def gold_to_silver(gold_pieces)
          gold_pieces * 10
      end
  end

  def attack(enemy)
    # code to fight
  end

  def take_damage
    self.health -= damage
    # @health =-= damage
    self.shout("OUCH!")
  end

  def shout(string)
    puts string
  end

  def sleep
    health += 1 unless health >= 99
  end

  def heal
    2.times { super }
    puts "Ready for battle!"
  end
end

warrior1 = Viking.create_warrior(Viking.random_name)

p warrior1

