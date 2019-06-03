class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum("rating")
  end
  
  def self.most_popular_show
    Show.where(rating: highest_rating)[0]
  end
  
  def self.lowest_rating
    self.minimum("rating")
  end
  
end