class AddCivilianQuestionsIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :civilian_questions_id, :integer
  end
end
