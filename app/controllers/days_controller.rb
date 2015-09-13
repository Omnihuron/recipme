class DaysController < ApplicationController

	def index
		@days = Day.all.order(number: :asc)
	end

	def update
		Day.find(params[:id]).update_attributes(meals: params[:meals])
		render :json => { :success => "success", :status_code => "200" }
	end

end