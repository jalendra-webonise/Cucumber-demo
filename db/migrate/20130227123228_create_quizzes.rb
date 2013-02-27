class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :query
      t.integer :mini_lesson_id
      t.timestamps
    end
  end
end
