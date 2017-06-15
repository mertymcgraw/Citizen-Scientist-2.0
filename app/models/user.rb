class User < ApplicationRecord
  has_many :dive_entries, :foreign_key => "diver_id"
  has_many :environmental_study_responses, :foreign_key => "diver_id"
  
  validates :first_name, :last_name, :email, :dive_certification, {presence: true}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def total_time_underwater
    total_time = self.dive_entries.map do |entry|
      entry.dive_time
    end
      total_time.reduce(:+)
  end

  def max_depth
    max_depth = 0
    self.dive_entries.each do |entry|
      if entry.depth > max_depth
        max_depth = entry.depth
      end
    end
    max_depth
  end

  def max_depth_location
    max_depth = 0
    max_depth_dive_site= "N/A"
    max_depth_location = "N/A"
    self.dive_entries.each do |entry|
      if entry.depth > max_depth
        max_depth = entry.depth
        max_depth_dive_site = entry.dive_site
        max_depth_location = entry.location.location_name
      end
    end
    "#{max_depth_dive_site}, #{max_depth_location}"
  end

end
