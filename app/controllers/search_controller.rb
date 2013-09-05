NO_AVAILABILITY_MSG = "No Seats Available"
AVAILABILITY_MSG = "Seats Available! Call Now!"
class SearchController < ApplicationController


	def index
		
			@availableseats = Trip.find_by_departing_and_returning(params[:depart_date][:id],params[:return_date][:id])
			@displaymsg = @availableseats ?  "Seats Available! Call Now!" : "No Seats Available"
		render 'layouts/results'
	end

end
