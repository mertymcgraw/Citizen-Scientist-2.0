class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :dive_certification, null: false
      t.string :profile_picture
      t.string :cover_photo

      t.timestamps
    end
  end
end
