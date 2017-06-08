class EnvironmentalStudyResponse < ActiveRecord
  belongs_to :environmental_study_question
  belongs_to :diver, :class_name => "User"

  validates :response, :survey_question_id, presence: true
end