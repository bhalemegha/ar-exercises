require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"
# Total annual revenue for all stores
sum = Store.sum(:annual_revenue)
puts "Sum is---- #{sum}"

# average annual revenue for all stores
total_stores = Store.count()
avg = sum.to_i / total_stores.to_i
puts "Average is---- #{avg}"

# number of stores that are generating $1M or more in annual sales
count = Store.where("annual_revenue >= ?",1000000).count()
puts "total number of stores that are generating $1M or more in annual sales---- #{count}"