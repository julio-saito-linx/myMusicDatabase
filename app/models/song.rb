class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :tracknumber
  validates_presence_of :filepath
  validates_uniqueness_of :filepath
end
