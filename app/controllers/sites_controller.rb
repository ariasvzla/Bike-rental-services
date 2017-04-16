class SitesController < ApplicationController


  def index
  	# allow the view to acces to the table of the user and bike
  	 @bikes = Bike.all
  	 @users= User.all
  end
  def profile
  end
end
