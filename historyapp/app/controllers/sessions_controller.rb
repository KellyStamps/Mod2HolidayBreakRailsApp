class SessionsController < ApplicationController
  # skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if @user && params[:password] == @user.password
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    elsif @user
      flash[:error] = ["Username or password incorrect; please try again"]
      redirect_to login_path
    else
      flash[:error] = ["Username or password incorrect; please try again"]
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end

end
