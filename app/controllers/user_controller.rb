class UserController < ApplicationController
  before_action :authenticate_user!
  def show
    @total_dives = current_user.dive_entries.length
    @total_time_underwater = current_user.total_time_underwater
    @max_depth = current_user.max_depth
    @max_depth_location = current_user.max_depth_location
  end

end