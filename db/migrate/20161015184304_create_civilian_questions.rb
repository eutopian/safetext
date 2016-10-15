class CreateCivilianQuestions < ActiveRecord::Migration
  def change
    create_table :civilian_questions do |t|
      t.integer :civilian_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end