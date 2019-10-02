class MealsController < ApplicationController

  def index
    # gives us the list of all users so we can filter
    @users = User.all

    # filters the @meals based on user choice
    if !params[:user].blank?
      @meals = Meal.by_user(params[:user])
    elsif !params[:date].blank?
      if params[:date] == "Today"
        @meals = Meal.from_today
      else
        @meals = Meal.old_meals
      end
    else
      # if no filters are applied, show all meals
      @meals = Meal.all
    end

  end


  



end
