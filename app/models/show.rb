class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
  end

  def Show::most_popular_show
    Show.where("rating = ?", Show.maximum(:rating)).first
  end

  def Show::lowest_rating
    Show.minimum(:rating)
  end

  def Show::least_popular_show
    Show.where("rating = ?", Show.minimum(:rating)).first
  end

end
