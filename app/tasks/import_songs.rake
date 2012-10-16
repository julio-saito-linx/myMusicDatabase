#!/bin/env ruby
# encoding: utf-8

require 'taglib'
require 'find'
require 'progress_bar'


desc "get info from mp3 file"
task :songs => :environment  do

  mp3_file_paths = Dir.glob("/mnt/1001/**/*.mp3")
  puts "#{mp3_file_paths.length} files found"

  bar = ProgressBar.new(mp3_file_paths.length)

  mp3_file_paths.each do |file_path|
    s = Song.new
    s.filepath = file_path

    # Load a file
    TagLib::FileRef.open(s.filepath) do |fileref|
      tag = fileref.tag

     # Read basic attributes
      s.title = tag.title   #=> "Wake Up"
      s.artist = tag.artist  #=> "Arcade Fire"
      s.album = tag.album   #=> "Funeral"
      s.tracknumber = tag.track   #=> 7

      properties = fileref.audio_properties
      properties.length  #=> 335 (song length in seconds)

      s.length = properties.length
      s.bitrate = properties.bitrate
      s.sample_rate = properties.sample_rate
    end  # File is automatically closed at block end

    s.save!
    bar.increment!

  end

end
