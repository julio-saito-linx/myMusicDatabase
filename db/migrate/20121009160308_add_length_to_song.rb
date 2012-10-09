class AddLengthToSong < ActiveRecord::Migration
  def change
    add_column :songs, :length, :integer
    add_column :songs, :bitrate, :integer
    add_column :songs, :sample_rate, :integer
  end
end
