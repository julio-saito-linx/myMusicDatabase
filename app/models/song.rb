class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :tracknumber
  validates_presence_of :filepath
end
