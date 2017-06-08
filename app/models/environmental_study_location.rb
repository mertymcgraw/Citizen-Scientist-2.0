class EnvironmentalStudyLocation < ActiveRecord
  belongs_to :location
  belongs_to :environmental_study

  validates :location_id, :environmental_study_id, presence: true
 
end