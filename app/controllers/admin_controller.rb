class AdminController < ApplicationController
   before_filter :not_admin_authorized
  def home_page
    @flights = Flight.all
    @planes = Plane.all
  end

end