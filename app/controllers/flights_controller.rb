class FlightsController < ApplicationController
  def create
    @flights = Flight.create(params[:flight])
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
  end
end
