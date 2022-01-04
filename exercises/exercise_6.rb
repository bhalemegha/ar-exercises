require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@s1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@s1.employees.create(first_name: "Sam", last_name: "Yonyo", hourly_rate: 70)
@s2.employees.create(first_name: "Mac", last_name: "D'souja", hourly_rate: 65)
@s2.employees.create(first_name: "Tom", last_name: "Hanks", hourly_rate: 50)
@s3.employees.create(first_name: "Will", last_name: "Smith", hourly_rate: 100)
@s3.employees.create(first_name: "Morgan", last_name: "Freeman", hourly_rate: 70)

puts Employee.count
