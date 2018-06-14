class Ingredient
  @@all = []

	attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    output = Allergen.all.map do |allergen|
			allergen.ingredient
		end
		output.sort_by do |el|
			array.count(el)
		end.last
  end
end
