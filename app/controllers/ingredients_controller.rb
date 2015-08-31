class IngredientsController < ApplicationController

	def new
		@meal = Meal.find(params[:meal_id])
		@meal_name = @meal.name
		@ingredient = Ingredient.new(meal_id: params[:meal_id])
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)
		@ingredient.meal_id = params[:meal_id]
		@ingredient.save

		redirect_to meal_path(params[:meal_id])
	end

	def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :quantity_units) #god dammit
  end


end