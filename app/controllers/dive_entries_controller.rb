class DiveEntriesController < ApplicationController
  def index
    @dive_entries = current_user.dive_entries
  end 

  def new
  end 

  def create
    @new_dive_entry = DiveEntry.new(dive_entry_details)
    p @new_dive_entry
    if @new_dive_entry.save
      redirect_to user_dive_entries_path
    else
      @errors = @new_dive_entry.errors.full_messages
      p @errors
      render 'new'
    end
   
  end 



  private

  def dive_entry_params
    params.require(:dive_entry).permit(:dive_site, :date, :dive_time, :depth, :temperature, :visibility, :notes, :location)
  end

  def find_location_id 
    location_id = Location.where(location_name: dive_entry_params[:location])
      if location_id.empty?
        Location.create(location_name: dive_entry_params[:location])
        location_id = Location.all.length
      else
        return location_id.first.id 
      end
    location_id
  end 

  def dive_entry_details
    dive_details = {}
    dive_entry_params.each do |key, value|
      if key != "location"
       dive_details[key] = value
      else 
        dive_details[:location_id] = find_location_id
      end
    end 
    dive_details[:diver_id] = current_user.id
    dive_details
  end

end
