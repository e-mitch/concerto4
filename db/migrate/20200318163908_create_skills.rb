class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :variety
      t.string :genre
      t.integer :experience
      t.text :details

      t.timestamps
    end
  end
end
