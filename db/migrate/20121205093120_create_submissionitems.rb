class CreateSubmissionitems < ActiveRecord::Migration
  def change
    create_table :submissionitems do |t|

      t.string :title
 	  t.text :description
 	  t.integer :submission_id
 	  t.integer :assignmenttask_id

      t.timestamps
    end
  end
end
