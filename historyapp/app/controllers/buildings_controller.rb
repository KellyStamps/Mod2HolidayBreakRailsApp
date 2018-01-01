class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
    @figure = @building.figure
  end

  def new
    @building = Building.new
    @cities = City.all
    @figures = Figure.all
  end

  def create
    @building = Building.new(building_params)
    if @building.valid?
      @building.save
      redirect_to building_path(@building)
    else
      flash[:error] = @building.errors.full_messages
      render :new
    end
  end

  def edit
    @building = Building.find(params[:id])
    @cities = City.all
    @figures = Figure.all
  end

  def update
    @building = Building.find(params[:id])
    if @building.valid?
      @building.update(building_params)
      redirect_to building_path(@building)
    else
      flash[:error] = @building.errors.full_messages
      render :new
    end
  end

  private

  def building_params
    params.require(:building).permit(:name, :date_built, :city_id, :figure_id, :address)
  end

end
