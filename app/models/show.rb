class Show < ActiveRecord::Base

  def Show::highest_rating
    show = Show.maximum(:rating)
  end

  def Show::most_popular_show
    show = Show.where("rating = ?", Show.maximum(:rating)).first
  end

end
