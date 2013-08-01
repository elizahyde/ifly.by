class FlightsController < ApplicationController
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
    @flights = Flight.all



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


