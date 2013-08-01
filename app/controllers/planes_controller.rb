class PlanesController < ApplicationController
  def new
    @plane = Plane.new
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end

  end

  def create
    @plane = Plane.create(params[:plane])
    @plane.save
    @planes = Plane.all
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  def show
    @plane = Plane.find(params[:id])
  end

  def index
    @planes = Plane.all
  end
end
