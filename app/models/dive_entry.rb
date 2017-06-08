class DiveEntry < ApplicationRecord
  belongs_to :diver, :class_name => "User"
  belongs_to :location

  validates :diver_id, :location_id, :dive_site, :date, {presence: true}


end 