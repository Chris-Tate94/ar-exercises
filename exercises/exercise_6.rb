require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 40)
@store1.employees.create(first_name: "Mìcheil", last_name: "Kadmos", hourly_rate: 60)
@store1.employees.create(first_name: "Christen", last_name: "Sima", hourly_rate: 150)
@store2.employees.create(first_name: "Bao", last_name: "Eline", hourly_rate: 60)
@store2.employees.create(first_name: "Chris", last_name: "Tate", hourly_rate: 200)
@store2.employees.create(first_name: "Jessica", last_name: "Semen", hourly_rate: 60)
