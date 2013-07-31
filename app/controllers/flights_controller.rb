class FlightsController < ApplicationController
  def create
    @flight = Flight.create(params[:flight])
    @flight.save
  end

  def index
    @flights = Flight.all
  end

  def new
    @flight = Flight.new
  end
end
