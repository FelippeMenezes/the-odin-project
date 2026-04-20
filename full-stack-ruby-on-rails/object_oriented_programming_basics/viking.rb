class Person
  MAX_HEALTH = 120

  def initialize(name, age, health, strength, dead)
    @name = name
    @age = age
    @health = health
    @strength = strength
    @dead = dead
  end

  def heal
      self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end

class Viking  < Person
  attr_accessor :name, :age, :health, :strength, :weapon, :dead

  def initialize(name, age, health, strength, weapon, dead)
    super(name, age, health, strength, dead)
    @weapon = weapon
  end

  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    weapon = ["Axe","Sword","Fist"].sample
    dead = false
    Viking.new(name, health, age, strength, weapon, dead)
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
    if enemy.dead
      puts "#{enemy.name} is already dead!"
      return false
    end
    damage = (rand * 10 + 10).round(0)
    enemy.take_damage(damage)
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

  protected

  def take_damage(damage)
    self.health -= damage
    # @health =-= damage
    self.shout("OUCH!")
    die if @health <= 0
  end

  private

  def die
    puts "#{self.name} has been killed :("
    self.dead = true
  end
end

warrior1 = Viking.create_warrior(Viking.random_name)
warrior2 = Viking.create_warrior(Viking.random_name)

p warrior1
p warrior2

p warrior2.health

10.times do
  warrior1.attack(warrior2)
end

p warrior2.health
p warrior2
