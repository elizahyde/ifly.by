class TicketsController < ApplicationController
  def new
  end

  def create
    @ticket = Ticket.create(params[:ticket])
    @Ticket.save

    #create tickets by row, seat & create same flight id      
    ('A'..'G').each do |current_row|
      (1..10).each do |current_column|
          @flight.flight_id.each do |flight_id|
          Ticket.create({:row => current_row, :column => current_column, :flight_id => flight.id})
      end
    end
  
  end

  def show
  end

  def pick
    #@tickets = Ticket.where(:flight_id => params[:flight_id]).sort

  end
end
