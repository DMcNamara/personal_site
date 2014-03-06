module PagesHelper
  def age
    return distance_of_time_in_words(Time.now, Time.local(1990,11,06)).match(/\d\d/)[0]
  end
end
