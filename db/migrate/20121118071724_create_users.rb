class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :provider
      t.string :image
      t.string :location
      t.string :education
      t.string :experience
      t.string :cv

      t.timestamps
    end
  end
end
