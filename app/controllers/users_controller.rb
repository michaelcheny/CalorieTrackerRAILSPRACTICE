class UsersController < ApplicationController

  include UsersHelper
  include MealsHelper

  before_action :find_user, only: [:index, :show, :edit, :update, :destroy, :index]

  def index

  end

  def show
    
  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.new(user_params(:username, :password, :password_confirmation))
    if @user.save
      # to log in
      session[:user_id] = @user.id
      flash[:notice] = "Yo #{@user.username}!"
      redirect_to dashboard_path
    else
      flash[:alert] = "WTF BRO"
      render "new"
    end
  end

  def update

  end

  def destroy

  end

  def dashboard
    authenticate
    @user = current_user
    @current_calories = get_current_calories(@user)
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
