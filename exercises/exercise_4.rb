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

@s1 = Store.new
@s1.name = "Surrey"
@s1.annual_revenue = 224000
@s1.womens_apparel = true
@s1.mens_apparel = false
@s1.save

@s2 = Store.new
@s2.name = "Whistler"
@s2.annual_revenue = 1900000
@s2.womens_apparel = false
@s2.mens_apparel = true
@s2.save

@s3 = Store.new
@s3.name = "Yaletown"
@s3.annual_revenue = 430000
@s3.womens_apparel = true
@s3.mens_apparel = true
@s3.save

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
