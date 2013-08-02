class TicketsController < ApplicationController
  def new
  end

  def create
    @ticket = Ticket.create(params[:ticket])
    @Ticket.save
  end

  def show
  end

  def pick
    #@tickets = Ticket.where(:flight_id => params[:flight_id]).sort

  end
end
