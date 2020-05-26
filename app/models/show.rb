class Show < ActiveRecord::Base
  
  def self.highest_rating
    show = Show.maximum(:rating)
    return show
  end
  
  def self.most_popular_show
    show = Show.where(:rating = Show.highest_rating_
    
  end
  
end