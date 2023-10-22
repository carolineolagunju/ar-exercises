require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# calculate total revenueof all stores
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{@total_revenue}"

# calculate average revenueof all stores
@average_revenue = Store.average(:annual_revenue)
puts "Average Revenue: #{@average_revenue}"

# returns number of stores that make $1M or more in revenue
@over_1M_revenue = Store.where('annual_revenue >= ?', 1000000).count
puts "The number of stores that are generating $1M or more in annual sales is #{@over_1M_revenue}"