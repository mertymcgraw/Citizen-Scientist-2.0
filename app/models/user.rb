class User < ApplicationRecord
  has_many :dive_entries, :foreign_key => "diver_id"
  has_many :environmental_study_responses, :foreign_key => "diver_id"
  
  validates :first_name, :last_name, :email, :dive_certification, {presence: true}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
