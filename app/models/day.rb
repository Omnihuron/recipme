class Day < ActiveRecord::Base
	validates :number, presence: true

	# attr_accessor :meals

	def day_meals
		meals.map do |meal|
			Meal.find(meal.to_i)
		end
	end
end
