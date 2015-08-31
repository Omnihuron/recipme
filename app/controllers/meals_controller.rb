class MealsController < ApplicationController
  def index
  	@meals = Meal.all
  end

  def show
  	@meal = Meal.find(params[:id])
  end

  def new
  	@meal = Meal.new
  	@meal.name = "New Meal"
  end

  def create
  	@meal = Meal.create(meal_params)
  	redirect_to meals_path(@meal)
  end

  def meal_params
    params.require(:meal).permit(:name, :image)
  end
end