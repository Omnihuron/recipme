class Ingredient < ActiveRecord::Base
	belongs_to :meal

	validates :name, presence: true, length: {maximum:50, minimum: 3 }
end
