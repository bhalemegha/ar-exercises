require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of Gastown carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

s = Store.new
s.name = "Burnaby"
s.annual_revenue = 300000
s.womens_apparel = true
s.mens_apparel = true
s.save

s = Store.new
s.name = "Richmond"
s.annual_revenue = 1260000
s.womens_apparel = true
s.mens_apparel = false
s.save

s = Store.new
s.name = "Gastown"
s.annual_revenue = 190000
s.womens_apparel = false
s.mens_apparel = true
s.save

puts(Store.all)