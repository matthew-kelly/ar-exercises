require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# "employees" ("id" bigserial primary key, "store_id" bigint, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Matt", last_name: "Kelly", hourly_rate: 30)
@store1.employees.create(first_name: "Mark", last_name: "Marcus", hourly_rate: 100)
@store1.employees.create(first_name: "Luke", last_name: "Lucas", hourly_rate: 120)

@store2.employees.create(first_name: "John", last_name: "Johnson", hourly_rate: 100)
@store2.employees.create(first_name: "Peter", last_name: "Peterson", hourly_rate: 105)
@store2.employees.create(first_name: "Paul", last_name: "Paulson", hourly_rate: 140)
@store2.employees.create(first_name: "Judas", last_name: "Iscariot", hourly_rate: 104)