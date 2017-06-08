class CreateEnvironmentalStudyResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :environmental_study_responses do |t|
      t.string :response
      t.integer :survey_question_id, null: false

      t.timestamps
    end
  end
end
