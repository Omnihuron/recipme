class DaysController < ApplicationController

	def index
		@days = Day.all.order(number: :asc)
	end

end