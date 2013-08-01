class AdminController < ApplicationController
  def home_page
    @flights = Flight.all
    @planes = Plane.all
  end

end