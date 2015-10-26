class ListsController < ApplicationController

	def index
		# placing this in index until users are implemented
		# this is where some user functionality would go... Lists.where(user_id: user_id)
		@ingredients = Ingredient.where(list_id: '1').order(id: :asc)
		render '/lists/show'
	end

	def new
		# update when users are implemented
		Ingredient.for_list.delete_all

		days = Day.all.order(number: :asc)

		days.each do |day|
			day.day_meals.each do |meal|
				meal.ingredients_list.each do |ingredient|
					if list_ingredient=List.has_ingredient(ingredient)
						active_ingredient = Ingredient.find(list_ingredient)
						active_ingredient.quantity += ingredient.quantity
						active_ingredient.save!
					else
						new_ingredient = ingredient.dup
						new_ingredient.list_id = 1
						new_ingredient.save!
					end
				end
			end
		end

		redirect_to lists_path
	end

	def update
		Ingredient.find(params[:id]).update_attributes(purchased: params[:status])
		render :json => { :success => "success", :status_code => "200" }
	end
end