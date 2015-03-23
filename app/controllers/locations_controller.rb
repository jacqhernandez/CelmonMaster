class LocationsController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

  def index
    @locations = Location.all
    render :template => "locations/index"
  end

  def new
    @location = Location.new
    render :template => "locations/new"
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :template => "locations/new"
    end
  end

  def edit
    @location = Location.find(params[:id])
    render :template => "locations/edit"
  end

  def update
    @location = Location.find(params[:id])
    @location.gps = rand(10).to_i
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :template => "locations/edit"
    end
  end

  def destroy
    location.find(params[:id]).destroy!
    redirect_to locations_path
  end
  
  def location_params
    params.require(:location).permit!
  end
end
