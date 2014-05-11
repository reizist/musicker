class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :list_name
      t.string :user_id

      t.timestamps
    end
  end
end
