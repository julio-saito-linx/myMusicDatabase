class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :tracknumber
  validates_presence_of :filepath
  validates_uniqueness_of :filepath

  define_index do
    # fields
    indexes artist, :sortable => true
    indexes title, :sortable => true
    indexes album, :sortable => true
    indexes filepath, :sortable => true
    
    # attributes
    has created_at, updated_at
    #set_property :delta => true
  end

end
