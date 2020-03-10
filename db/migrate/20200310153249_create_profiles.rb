class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :name
      t.string :email
      t.text :bio
      t.text :interests

      t.timestamps
    end
  end
end
