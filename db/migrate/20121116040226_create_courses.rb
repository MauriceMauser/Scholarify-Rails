class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :new

      t.timestamps
    end
  end
end
