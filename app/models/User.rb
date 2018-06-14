class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end
  def recipes
    Recipe.all.select do |recipe|
			recipe.users.include?(self)
		end
  end

  def add_recipe_card(recipe, date, rating)
   RecipeCard.new(self, date, rating, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
			allergen.user == self
		end
  end

  def top_three_recipes
    cards = self.recipe_cards.max_by(3) do |card|
			card.rating
		end
    cards.map do |card|
			card.recipe
		end
  end

  def most_recent_recipe
    self.recipe_cards.last.recipe
  end

  def recipe_cards
    RecipeCard.all.select { |card| card.user == self }
  end

end
