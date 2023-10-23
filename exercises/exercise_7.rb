require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@store1.employees.create(last_name: "Santiago", hourly_rate: 50)
@store1.employees.create(first_name: "Pamela", hourly_rate: 50)
@store1.employees.create(last_name: "Santiago", first_name: "Pamela", hourly_rate: 202)
Employee.create(last_name: "Santiago", first_name: "Pamela", hourly_rate: 200)
Store.create(name: "Ba", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Super Store", annual_revenue: -1, mens_apparel: true, womens_apparel: true)
Store.create(name: "Super Store", annual_revenue: 30, mens_apparel: false, womens_apparel: false)

puts "Store Name?"
store_name = gets.chomp

store = Store.create(name: store_name)

