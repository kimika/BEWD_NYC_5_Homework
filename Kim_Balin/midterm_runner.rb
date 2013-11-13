require 'rest-client'
require 'json'

puts "Welcome to Savory Sriracha!"
puts "Find today's top Sriracha recipes!"

result = RestClient.get('http://food2fork.com/api/search?key=9d48f93d5a41c6a2c3b0835dcbf30d42&q=sriracha')
parsed = JSON.parse result

puts "Looking to pair a particular ingredient with Sriracha?"
puts "Add your ingredient now!"

  Ingredient = gets.chomp

parsed["recipes"].each do |sri|
  puts "#{sri["title"]} with #{Ingredient}"
  puts "url: #{sri["source_url"]}"
end