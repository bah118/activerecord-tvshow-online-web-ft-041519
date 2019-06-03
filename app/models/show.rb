class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum("rating")
  end
  
  def self.most_popular_show
    self.where(rating: highest_rating)[0]
  end
  
  def self.lowest_rating
    self.minimum("rating")
  end
  
  def self.least_popular_show
    self.where(rating: lowest_rating)[0]
  end
  
  def self.ratings_sum
    self.sum("rating")
  end
  
  # def self.popular_shows
  #   arr = []
  #   Show.all.each do |s|
  #     if s.rating > 5
  #       arr << s
  #     end
  #   end
  #   arr
  # end
  
    def self.popular_shows
    arr = []
    Show.all.each do |s|
      if s.rating > 5
        arr << s
      end
    end
    arr
  end
  
  
end