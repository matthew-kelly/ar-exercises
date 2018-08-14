require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store4 = Store.find_by(id: 4)
@store4.employees.create(first_name: "B. Matthew", last_name: "Kelly", hourly_rate: 90)

pp @store4.employees