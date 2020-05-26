class Show < ActiveRecord::Base
  def highest_rating
    return Show.maximum(:rating)
  end
end