class DiveEntryPhoto < ApplicationRecord
  belongs_to :dive_entry
  belongs_to :diver, :class_name => "User"

  validates :dive_photo, :dive_entry_id, presence: true
end
