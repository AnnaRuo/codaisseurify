require 'rails_helper'

describe "Show Page" do
  let(:artist) { create :artist }

  it "shows all information about the artist" do
    visit artist_url(artist)

    expect(page).to have_text(artist.name)
    expect(page).to have_text(artist.country)
    expect(page).to have_text(artist.age)
  end
end
