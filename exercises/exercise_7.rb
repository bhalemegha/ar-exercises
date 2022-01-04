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
puts "Please enter store name"
@name = gets.chomp
@s = Store.new
@s.name = @name
@s.womens_apparel = true
@s.mens_apparel = true
@s.save
@s.errors.full_messages
