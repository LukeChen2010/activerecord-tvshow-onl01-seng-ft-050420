class Show < ActiveRecord::Base
  
  def self.highest_rating
    show = Show.maximum(:rating)
    return show
  end
  
  def self.most_popular_show
    show = Show.where(rating: Show.highest_rating)[0]
    return show
  end
  
  def self.lowest_rating
    show = Show.minimum(:rating)
    return show
  end

  def self.least_popular_show
    show = Show.where(rating: Show.lowest_rating)[0]
    return show
  end
  
  def self.ratings_sum
    return Show.sum(:rating)
  end
  
  def self.popular_shows
    shows = Show.where("rating > ?", 5)
    return shows
  end
end