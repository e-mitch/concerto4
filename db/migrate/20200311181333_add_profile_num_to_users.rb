class AddProfileNumToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ProfileID, :integer
  end
end
