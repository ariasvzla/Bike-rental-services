class SitesController < ApplicationController


  def index
  	 @bikes = Bike.all
  	 @users= User.all
  end
  def profile
  end
end
