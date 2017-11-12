require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without title" do
      artist = Song.new(title: "")
      artist.valid?
      expect(artist.errors).to have_key(:artist)
    end

    it "is invalid without album" do
      artist = Song.new(album: "")
      artist.valid?
      expect(artist.errors).to have_key(:album)
    end
  end

  describe "association with artist" do
    let(:artist) { create :artist }
    it "belongs to an artist" do
      song = artist.songs.new(title: "Test Artist Song")

      expect(song.artist).to eq(artist)
    end
  end
end
