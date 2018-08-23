class Vehicle
	def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
	attr_accessor :fuel, :make, :model
	def initialize(fuel, make, model)
    super()
    @fuel = fuel
    @make = make
    @model = model
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new("diesel", "ford", "f150")
car.honk_horn
bike.ring_bell
puts car.fuel