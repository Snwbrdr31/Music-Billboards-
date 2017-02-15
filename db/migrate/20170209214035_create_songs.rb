class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :song_artist
      t.integer :duration
      t.belongs_to :billboard
      t.timestamps
    end
  end
end
