class Location < ApplicationRecord
has_many :environmental_study_locations
has_many :dive_entries

validates :location_name, {presence: true}
end