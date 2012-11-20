class CreateReviewQuestions < ActiveRecord::Migration
  def change
    create_table :review_questions do |t|
      t.text :content
      t.string :course_id

      t.timestamps
    end
  end
end
