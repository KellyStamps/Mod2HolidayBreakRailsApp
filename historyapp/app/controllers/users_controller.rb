class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:new, :create, :index]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.valid?
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end
  # 
  # def destroy
  #   User.find(params[:id]).delete
  #   redirect_to login_path
  # end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
