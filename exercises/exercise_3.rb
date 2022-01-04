require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
store = Store.limit(1).offset(2).first
store.destroy
puts(Store.count)