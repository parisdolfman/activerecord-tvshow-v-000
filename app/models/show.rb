class Show < ActiveRecord::Base

  def Show::highest_rating
    show = Show.maximum(:rating)
    show
    binding.pry
  end

  def Show::most_popular_show
    Show.where("rating = ?", :rating).first
  end

end
