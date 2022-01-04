require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# # Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

s = Store.new
s.name = "Surrey"
s.annual_revenue = 224000
s.womens_apparel = true
s.mens_apparel = false
s.save

s = Store.new
s.name = "Whistler"
s.annual_revenue = 1900000
s.womens_apparel = false
s.mens_apparel = true
s.save

s = Store.new
s.name = "Yaletown"
s.annual_revenue = 430000
s.womens_apparel = true
s.mens_apparel = true
s.save

# # arry men's apparel
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name}  #{store.annual_revenue}"
end

# load stores that carry women's apparel and are generating less than $1M in annual revenue.
@women_stores = Store.where("annual_revenue >= ?",1000000).where(womens_apparel: true)
@women_stores.each do |store|
  puts "#{store.name}  #{store.annual_revenue}"
end
