class Show < ActiveRecord::Base 
  def self.highest_rating
    self.maximum("rating")
  end
  
  def self.most_popular_show
    # popular = highest_rating
    Show
    
    
    Show.all.each{|s| s.rating = highest_rating
  end
  
  
end