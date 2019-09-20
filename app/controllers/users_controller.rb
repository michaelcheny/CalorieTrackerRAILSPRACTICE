class UsersController < ApplicationController

  before_action :find_user

  def new
    @user = User.new
  end

  def create

  end

  def show
    
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
