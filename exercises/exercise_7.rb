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

# Store.create(name: "Badstore", annual_revenue: 190000, mens_apparel: false, womens_apparel: false)
# p Store.find_by(name: "Badstore")

# @store4 = Store.find_by(id: 4)

# @store4.employees.create()
# @store4.employees.create(first_name: "Fake", hourly_rate: 60)
# # @store4.employees.create(last_name: "Virani", hourly_rate: 60)
# @store4.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 30)
# @store4.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: "thirty")
# # @store4.employees.create(first_name: "Khurram", last_name: "Virani")
# # employees.create(first_name: "Khurram", last_name: "Virani")

# pp @store4.employees
# puts @store4.employees.count

print "Enter a new store name: "
new_store = gets.chomp
create_new_store = Store.create(name: new_store)
create_new_store.errors.messages.each do |err|
  puts "Error: #{err}"
end