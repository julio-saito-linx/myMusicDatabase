require 'spec_helper'

describe Song, "validations" do
  it "requires filepath" do
    song = Song.create()
    expect(song).to have(1).error_on(:filepath)
  end
end
