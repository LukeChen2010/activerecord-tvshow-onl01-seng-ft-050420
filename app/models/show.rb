class Show < ActiveRecord::Base
  
  def self.highest_rating
    show = Show.maximum(:rating)
    return show
  end
  
end