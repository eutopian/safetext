class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :response
      t.integer :civilian_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
