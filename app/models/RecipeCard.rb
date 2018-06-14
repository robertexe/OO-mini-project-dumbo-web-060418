
class RecipeCard

	## Each RecipeCard will store information about (a Recipe a User) would like to save


	@@all = []

	attr_accessor :recipe, :date, :rating, :user

	def initialize(user, recipe, date, rating)
		@user = user
		@recipe = recipe
		@date = date
		@rating = rating
		@@all << self
	end

	def self.all
		@@all
	end

end
