require 'http'

response = HTTP.get("http://localhost:3000/api/recipes")
recipes = response.parse

recipes.each do |recipe|
  puts
  puts recipe["title"]
  recipe["formatted"]["directions"].each do |direction|
    puts "   • #{direction}"
  end
end