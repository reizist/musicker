class CreateSongEntries < ActiveRecord::Migration
  def change
    create_table :song_entries do |t|
      t.references :playlist, index: true
      t.references :song, index: true

      t.timestamps
    end
  end
end
