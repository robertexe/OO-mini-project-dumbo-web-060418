

class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.max_by do |recipe|
      recipe.users.count
    end
  end

  def allergens
    allergens = Allergen.all.select do |allergen|
	 	self.ingredients.include?(allergen.ingredient)
		end
    allergens.map do |allergen|
			allergen.ingredient
		end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def users
    cards = RecipeCard.all.select do |card|
			card.recipe == self
		end
    cards.map do
      |card| card.user
		end
  end
end
