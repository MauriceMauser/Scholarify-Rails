class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.text :content
      t.belongs_to :submittable, polymorphic: true

      t.timestamps
    end

    add_index :submissions, [:submittable_id, :submittable_type]

  end
end
