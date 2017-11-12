require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without country" do
      artist = Artist.new(country: "")
      artist.valid?
      expect(artist.errors).to have_key(:country)
    end

    it "is invalid without age" do
      artist = Artist.new(age: nil)
      artist.valid?
      expect(artist.errors).to have_key(:age)
    end
  end
end
