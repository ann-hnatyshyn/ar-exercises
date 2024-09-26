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

class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, only_integer: true, length: {:in 40..200}
  validates :employees, :store, presence: true
  validates :store_name, presence: true, length: { minimum: 3 }
  validates :store, annual_revenue: true, only_integer: true, length: { minimum: 0 }

  def mens_womens_apparel
    unless mens_apparel == true || womens_apparel == true
      errors.add(:base "Stores must carry either men's or women's apparel")
    end

end

