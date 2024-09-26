require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ApplicationRecord
  has_many :employees
end

class Employee < ApplicationRecord
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 55)

@store2.employees.create(first_name: "Sage", last_name: "Williams", hourly_rate: 50)
@store2.employees.create(first_name: "Basil", last_name: "Green", hourly_rate: 50)
@store2.employees.create(first_name: "Eva", last_name: "Davis", hourly_rate: 60)

@store3.employees.create(first_name: "Sara", last_name: "Kennedy", hourly_rate: 50)
@store3.employees.create(first_name: "Pip", last_name: "Blue", hourly_rate: 30)
@store3.employees.create(first_name: "Steve", last_name: "Max", hourly_rate: 45)