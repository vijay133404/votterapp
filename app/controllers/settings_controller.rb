class SettingsController < ApplicationController
	def new
    @setting = Setting.create(:start_time => Time.now,:end_time=>Time.now + 30.minute)
  end
 

  def edit
     @setting = Setting.find(params[:id])
     @setting.start_time = Time.now if @setting.start_time.nil?
  end
end
