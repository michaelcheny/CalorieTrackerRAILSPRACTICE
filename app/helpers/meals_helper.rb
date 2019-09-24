module MealsHelper

  def grab_meals_from_today(meals)
    today_meals = []
    meals.each do |meal|
      if meal.created_at.strftime("%D") == Date.today.strftime("%D")
        today_meals << meal
      end
    end
    today_meals
  end    

end
