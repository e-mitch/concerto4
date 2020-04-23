class AddSoundcloudToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :soundcloud, :string
  end
end
