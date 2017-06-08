class EnvironmentalStudyQuestion < ActiveRecord
  belongs_to :environmental_study

  validates :question, :environmental_study_id, presence: true
end