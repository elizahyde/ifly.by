class FlightsController < ApplicationController
  before_filter :not_admin_authorized, :except => [:index]
  def create
    @flight = Flight.create(params[:flight])
    @flight.save
    @flights = Flight.all
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end

  end

  def index
    admin_authorized
    @flights = Flight.all
    @airports = Airport.all
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
end


