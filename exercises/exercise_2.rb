require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
store = Store.first

second_store = Store.limit(1).offset(1).first

store.name = "Vancouver"
store.save
puts store.name
puts second_store.name