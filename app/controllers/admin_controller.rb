class AdminController < ApplicationController
  def home_page
    @flights = Flight.all

  end

end