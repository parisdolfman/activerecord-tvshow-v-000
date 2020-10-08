class Show < ActiveRecord::Base

  def Show::highest_rating
    show = Show.maximum(:rating)
  end

  def Show::most_popular_show
    Show.where("rating = ?", :rating).first
  end

end
