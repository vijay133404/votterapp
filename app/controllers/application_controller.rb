class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def set_api_time_zone
  utc_offset = current_user_session && current_user_session.user ? current_user_session.user.time_zone_offset.to_i.minutes : 0
  user_timezone = ActiveSupport::TimeZone[utc_offset]
  Time.zone = user_timezone if user_timezone
end
end
