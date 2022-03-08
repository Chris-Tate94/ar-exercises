require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store = Store.create do |s|
    s.name = "Surrey"
    s.annual_revenue = 224000
    s.mens_apparel = false
    s.womens_apparel = true
end

store = Store.create do |s|
    s.name = "Whistler"
    s.annual_revenue = 1900000
    s.mens_apparel = true
    s.womens_apparel = false
end

store = Store.create do |s|
    s.name = "Yaletown"
    s.annual_revenue = 430000
    s.mens_apparel = true
    s.womens_apparel = true
end

@mens_store = Store.where(mens_apparel: true)
@womens_store = Store.where(womens_apparel: true,).where("annual_revenue < ?", 1000000)

for store in @mens_store do
    puts store.name
    puts store.annual_revenue
end
puts "----------------------"

for store in @womens_store do
    puts store.name
    puts store.annual_revenue
end