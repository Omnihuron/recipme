class Ingredient < ActiveRecord::Base
	belongs_to :meal

	validates :name, presence: true, length: {maximum:50, minimum: 3 }
	validates :meal_id, presence: true

	def self.for_list
		Ingredient.where(list_id: '1')
	end

	def is_on_list?
		list_id.present?
	end
end
