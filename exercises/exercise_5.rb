require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@sum = Store.sum(:annual_revenue)
puts "Total revenue is: #{@sum}"

# On the next line, also output the average annual revenue for all stores.
@avg = Store.average(:annual_revenue)
puts "Average annual revenue is: #{@avg}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
@more1M = Store.where("annual_revenue > 1000000").count
puts "The number of stores where annual revenue generates more than $1M in annual sales: #{@more1M}"
