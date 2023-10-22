require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# create store Surrey, Whistler and Yaletown
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that only carries men's apparel
@mens_stores = Store.where(mens_apparel: true)

# return the annual revenue of each store that only carries men's apparel
@mens_stores.each do |store|
  puts "#{store.name} Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that only carries women's apparel and are generating less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# return the annual revenue of each store that only carries women's apparel and annual revenue is less than $1M
@womens_stores.each do |store|
  puts "#{store.name} Annual Revenue: #{store.annual_revenue}"
end
