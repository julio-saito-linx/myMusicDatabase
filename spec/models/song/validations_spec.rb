require 'spec_helper'

describe Song, "validations" do
  it "requires filepath" do
    song = Song.create()
    expect(song).to have(1).error_on(:filepath)
  end
  it "filepath must be unique" do
    song1 = Song.new
    song1.filepath = "/um/caminho/qualquer"
    song1.save!

    song2 = Song.new
    song2.filepath = "/um/caminho/qualquer"
    song2.save
    expect(song2).to have(1).error_on(:filepath)
  end
end
