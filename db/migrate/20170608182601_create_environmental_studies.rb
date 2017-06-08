class CreateEnvironmentalStudies < ActiveRecord::Migration[5.1]
  def change
    create_table :environmental_studies do |t|
      t.string :study_name, null: false

      t.timestamps
    end
  end
end
