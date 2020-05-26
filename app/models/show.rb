class Show < ActiveRecord::Base
  
  def highest_rating
    show = Show.maximum(:rating)
    return show
  end
  
end