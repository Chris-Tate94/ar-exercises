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

class Employee < ActiveRecord::Base

    validates :first_name, presence: 
    true
    validates :last_name, presence: 
    true
    validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
    validates :store, absence: true

end

class Store < ActiveRecord::Base

    validates :name, presence: 
    true
    validates :name, length: {minimum: 3}
    validates :annual_revenue, numericality: {greater_than: 0}
end

store = Store.create do |s|
    s.name = "Bu"
    s.annual_revenue = 300000
    s.mens_apparel = true
    s.womens_apparel = true
end