class AddInputToSubmissionitem < ActiveRecord::Migration
  def change
    add_column :submissionitems, :input, :text
  end
end
