class WelcomeController < ApplicationController
  def index
  	@dates_depart = Tripdate.all
  	@dates_return = Tripdate.all
    render 'layouts/index'
  end
end