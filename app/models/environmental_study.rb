class EnvironmentalStudy < ApplicationRecord
  has_many :enironmental_study_locations
  has_many :locations, :through => :enironmental_study_locations
  has_many :questions

  validates: study_name, {presence: true}
end