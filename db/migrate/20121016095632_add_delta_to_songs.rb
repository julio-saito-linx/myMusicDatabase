class AddDeltaToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :delta, :boolean, :default => true, :null => false
  end
end
