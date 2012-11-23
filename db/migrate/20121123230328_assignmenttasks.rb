class Assignmenttasks < ActiveRecord::Migration
  def change
    create_table :assignmenttasks do |t|
      t.text :content
      t.integer :course_id

      t.timestamps
    end

    drop_table :assignment_tasks

  end
end