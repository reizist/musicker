class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :song_name
      t.string :m_link

      t.timestamps
    end
  end
end
