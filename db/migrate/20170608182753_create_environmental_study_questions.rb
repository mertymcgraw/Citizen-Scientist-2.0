class CreateEnvironmentalStudyQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :environmental_study_questions do |t|
      t.string :question, null: false
      t.integer :environmental_study_id, null: false

      t.timestamps
    end
  end
end
