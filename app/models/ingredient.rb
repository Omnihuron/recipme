class Ingredient < ActiveRecord::Base
	belongs_to :meal

	validates :name, presence: true, length: {maximum:50, minimum: 3 }
	validates :meal_id, presence: true
end
