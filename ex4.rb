cars = 100
spaceInACar = 4
drivers = 30
passengers = 90
carsNotDriven = cars - drivers
carsDriven = drivers
carpoolCapacity = carsDriven * spaceInACar
averagePassengersPerCar = passengers / carsDriven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{carsNotDriven} empty cars today."
puts "We can transport #{carpoolCapacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{averagePassengersPerCar} in each car."