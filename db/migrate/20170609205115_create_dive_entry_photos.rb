class CreateDiveEntryPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :dive_entry_photos do |t|
      t.string :dive_photo, null: false
      t.integer :dive_entry_id, null: false
      
      t.timestamps
    end
  end
end
