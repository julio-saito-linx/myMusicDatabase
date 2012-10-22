class ChangeFilepathOnSongs < ActiveRecord::Migration
  def change
    change_column :songs, :filepath, :text, :limit => nil
  end
end
