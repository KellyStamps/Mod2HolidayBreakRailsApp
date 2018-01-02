class FiguresController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
    @figures = Figure.all

    if params[:search]
      @figures = Figure.search(params[:search]).order("created_at DESC")
    else
      @figures = Figure.all.order('created_at DESC')
    end
  end

  def show
    @figure = Figure.find(params[:id])
    @buildings = @figure.buildings
    @landmarks = @figure.landmarks
    @cities = @figure.cities
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = Figure.new(figure_params)
    if @figure.valid?
      @figure.save
      redirect_to figure_path(@figure)
    else
      flash[:error] = @figure.errors.full_messages
      render :new
    end
  end

  def destroy
    Figure.find(params[:id]).destroy
    flash[:success] = "Figure deleted"
    redirect_to figures_path
  end

  private

  def figure_params
    params.require(:figure).permit(:name, :birth_date, :death_date, :hometown, :profession, :gender, :bio)
  end

end
