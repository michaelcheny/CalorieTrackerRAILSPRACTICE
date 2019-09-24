module UsersHelper

  def get_current_calories(user)
    cals = 0
    meals = grab_meals_from_today(user.meals)
    meals.each do |meal|
      cals += meal.calories
    end
    cals
  end

end
