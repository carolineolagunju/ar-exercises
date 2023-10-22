require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Pamela", last_name: "Jones", hourly_rate: 40)
@store1.employees.create(first_name: "Joseph", last_name: "Jacob", hourly_rate: 75)
@store1.employees.create(first_name: "Tiara", last_name: "Lebron", hourly_rate: 52)
@store1.employees.create(first_name: "Tamara", last_name: "Santiago", hourly_rate: 50.5)

@store2.employees.create(first_name: "Kira", last_name: "James", hourly_rate: 80)
@store2.employees.create(first_name: "Mika", last_name: "Thomas", hourly_rate: 70)
@store2.employees.create(first_name: "Andrew", last_name: "Wise", hourly_rate: 60)
@store2.employees.create(first_name: "Micah", last_name: "Johnson", hourly_rate: 50)
@store2.employees.create(first_name: "Simone", last_name: "Whale", hourly_rate: 40)

