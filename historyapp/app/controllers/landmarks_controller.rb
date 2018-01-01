class LandmarksController < ApplicationController

  def index
    @landmarks = Landmark.all
  end

  def show
    @landmark = Landmark.find(params[:id])
  end

  def new
    @landmark = Landmark.new
    @cities = City.all
    @figures = Figure.all
  end

  def create
    @landmark = Landmark.new(landmark_params)
    if @landmark.valid?
      @landmark.save
      redirect_to landmark_path(@landmark)
    else
      flash[:error] = @landmark.errors.full_messages
      render :new
    end
  end

  def edit
    @landmark = Landmark.find(params[:id])
    @cities = City.all
    @figures = Figure.all
  end

  def update
    @landmark = Landmark.find(params[:id])
    if @landmark.valid?
      @landmark.update(landmark_params)
      redirect_to landmark_path(@landmark)
    else
      flash[:error] = @landmark.errors.full_messages
      render :edit
    end
  end

  private

  def landmark_params
    params.require(:landmark).permit(:name, :event_date, :figure_id, :city_id, :address)
  end

end
