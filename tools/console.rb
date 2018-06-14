require_relative '../config/environment.rb'
require 'pry'


robert = User.new('Robert')
indira = User.new('Indira')

pizza = Recipe.new('Pizza')
chicken = Recipe.new('Chicken')
noodles = Recipe.new('noodles')
beef_stew = Recipe.new('beef_stew')

apple = Ingredient.new('apple')
banana = Ingredient.new('banana')
beef = Ingredient.new('beef')
msg = Ingredient.new('msg')

ingrid_arr = [apple, beef, msg]

shrimp = Allergen.new(robert, 'shrimp')
nuts = Allergen.new(robert,'nuts')

robert.add_recipe_card(robert, beef_stew, 'date', 10)
robert.add_recipe_card(robert, noodles, 'date', 10)
robert.add_recipe_card(robert, pizza, 'date', 10)





binding.pry
