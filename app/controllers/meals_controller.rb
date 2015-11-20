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
  	redirect_to meal_path(@meal)
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    Meal.find(params[:id]).update_attributes(meal_params)
    redirect_to meal_path(Meal.find(params[:id]))
  end

  def meal_params
    params.require(:meal).permit(:name, :image, :recipe)
  end
end
