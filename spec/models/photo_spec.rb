require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe "association with artist" do
    let(:artist) { create :artist }
    it "belongs to an artist" do
      photo = artist.photos.new(image: "http://res.cloudinary.com/dqjubqikq/image/upload/v1510427557/adele-hero-620173502_gbhquv.jpg")

      expect(photo.artist).to eq(artist)
    end
  end
end
