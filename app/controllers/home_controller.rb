class HomeController < ApplicationController
  def index
      @current_time = Time.current
      @time_of_days = case @current_time.hour
      when 6..10
        "朝"
      when 11..14
        "昼"
      when 15..16
        "おやつ"
      else
        "夜"
      end
  end
end