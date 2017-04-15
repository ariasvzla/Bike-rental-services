class SiteController < ApplicationController


  def index
  	 @bikes = Bike.all
  end
  def profile
  end
end
