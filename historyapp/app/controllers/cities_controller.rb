class CitiesController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.valid?
      @city.save
      redirect_to city_path(@city)
    else
      flash[:error] = @city.errors.full_messages
      render :new
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.valid?
      @city.update(city_params)
      redirect_to city_path(@city)
    else
      flash[:error] = @city.errors.full_messages
      render :edit
    end
  end

  private

  def city_params
    params.require(:city).permit(:name, :description)
  end


end
