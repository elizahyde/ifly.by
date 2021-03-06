class FlightsController < ApplicationController
  before_filter :not_admin_authorized, :except => [:index, :flights_filter, :show]
  def create
    @flight = Flight.create(params[:flight])
    @flight.save
    @flights = Flight.all
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end

  end

  def flights_filter
    @flight_results = Flight.where(:arrival_airport_id => (params[:arrival_airport_id]), :departure_airport_id => (params[:departure_airport_id]))
    respond_to do |format|
      format.js
    end
  end

  def index
    admin_authorized
    @flights = Flight.all
    @airports = Airport.all
    @flight_results = Flight.where(:arrival_airport_id => (params[:arrival_airport_id]), :departure_airport_id => (params[:departure_airport_id]))
    #@flights = Flight.search do
      #fulltext params[:search]
    #end
    #@flights = @search.result
  end

  def new
    @flight = Flight.new
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end


  def show
    @flight = Flight.find(params[:id])
    @available_tickets = Array.new
    @flight.tickets.each do |tix|
      unless tix.purchased?
        @available_tickets << tix.seat
      end
    end

    @col = @flight.plane.column 
  end
end


