class Show < ActiveRecord::Base 
  def selfhighest_rating
    Show.maximum("rating")
  end
end