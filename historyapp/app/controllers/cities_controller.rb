class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @buildings = @city.buildings
    @landmarks = @city.landmarks
  end

end
