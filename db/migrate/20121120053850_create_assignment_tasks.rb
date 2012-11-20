class CreateAssignmentTasks < ActiveRecord::Migration
  def change
    create_table :assignment_tasks do |t|
      t.text :content
      t.string :course_id

      t.timestamps
    end
  end
end
