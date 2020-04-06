class AddSpotifyToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :spotify, :string
  end
end
