module ItemsHelper

  def days_left(item)
    distance_of_time_in_words(Time.now, item.created_at)
  end

end
