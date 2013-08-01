class PlanesController < ApplicationController
  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(params[:plane])
    @plane.save
  end

  def show
    @plane = Plane.find(params[:id])
  end

  def index
    @planes = Plane.all
  end
end
