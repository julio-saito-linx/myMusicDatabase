#!/bin/env ruby
# encoding: utf-8

require 'taglib'

desc "get info from mp3 file"
task :songs => :environment  do
  FILE_PATH = "/mnt/skydrive/11\ -\ Triálogo\ -\ Talvez\ Humana.mp3"

  s = Song.find_by_filepath FILE_PATH
  
  s = Song.new if s == nil
  s.filepath = FILE_PATH

  # Load a file
  TagLib::FileRef.open(s.filepath) do |fileref|
    tag = fileref.tag
  
    # Read basic attributes
    s.title = tag.title   #=> "Wake Up"
    s.artist = tag.artist  #=> "Arcade Fire"
    s.album = tag.album   #=> "Funeral"
    #s.artist = tag.year    #=> 2004
    s.tracknumber = tag.track   #=> 7
    #s.artist = tag.genre   #=> "Indie Rock"
    #s.artist = tag.comment #=> nil
  
    properties = fileref.audio_properties
    properties.length  #=> 335 (song length in seconds)

    s.length = properties.length
    s.bitrate = properties.bitrate
    s.sample_rate = properties.sample_rate
  end  # File is automatically closed at block end
  
  s.save!
  p s
end
