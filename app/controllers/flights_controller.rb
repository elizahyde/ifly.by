class FlightsController < ApplicationController
  def create
    @flight = Flight.create(params[:flight])
    @flight.save
  end

  def index
    @flights = Flight.all
    search_query = params[:query]

    if search_query.blank?
      @flights = Flight.all

    else
      #@articles = Article.where("name @@ :q or content @@ :q", :q => "%#{search_query}%")
      search = Flight.search { fulltext search_query }
      @flights = search.results

    end

    #@flights = Flight.search do
      #fulltext params[:search]
    #end
    #@flights = @search.result
  end

  def new
    @flight = Flight.new
  end
end
