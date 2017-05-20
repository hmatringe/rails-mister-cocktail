require 'json'
require 'open-uri'

Ingredient.create(name:"test")

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
api_ingredients = {}
api_ingredients = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

api_ingredients["drinks"].each do |x|
  Ingredient.create(name:"#{x["strIngredient1"]}")
end

# api_ingredients["drinks"][0]["strIngredient1"]
