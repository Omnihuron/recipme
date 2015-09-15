class List < ActiveRecord::Base
	has_many :ingredients

	def self.has_ingredient(ingredient)
		Ingredient.where(list_id: 1).each do |list_ingredient|
			if list_ingredient.name == ingredient.name
				return list_ingredient.id
			end
		end
		return nil
	end

	def self.ingredients_list
		Ingredient.where(list_id: 1)
	end
end