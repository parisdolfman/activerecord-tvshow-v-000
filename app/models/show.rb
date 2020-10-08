class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
  end

  def Show::most_popular_show
    show = Show.maximum(:rating)
    show.each do |att|
      att[:name]
      binding.pry
    end
  end

end
