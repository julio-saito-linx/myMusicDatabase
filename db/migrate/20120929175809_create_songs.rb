class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string  :title
      t.string  :artist
      t.integer :tracknumber
      t.string  :filepath, :null => false
      t.timestamps
    end
  end
end
