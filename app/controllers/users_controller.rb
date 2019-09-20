class UsersController < ApplicationController

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
