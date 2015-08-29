class Meal < ActiveRecord::Base
	has_many :ingredients

	validates :name, presence: true, length: {maximum:50, minimum: 3 }

	def ingredients_list
		Ingredient.where(meal_id: id)
	end

end
