class DiveEntryController < ApplicationController
  def index
    @dive_entries = current_user.dive_entries
  end 
end
