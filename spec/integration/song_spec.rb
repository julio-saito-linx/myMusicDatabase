require "spec_helper"

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Song do
  context "view list of songs" do
    before do
      song = Song.new(:artist => "Artist 1")
      song.filepath = "/c/c/c.mp3"
      song.save!

      visit root_path
    end

    it "show a list of songs" do
      expect(current_path).to eql(root_path)
    end

    it "have a song" do
      expect(page).to have_content("Artist 1")
    end
  end
end
