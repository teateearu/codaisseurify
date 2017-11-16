require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(year: Faker::Number.between(1000, 2017))
      song2 = artist.songs.new(year: Faker::Number.between(1000, 2017))

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)

    end
  end

  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
    it "is invalid without a picture" do
      artist = Artist.new(remote_image_url: "")
      artist.valid?
      expect(artist.errors).to have_key(:remote_image_url)
    end
  end

  describe "order alphabetically" do
     let!(:artist1) { create :artist, name: "Mariah Carey"}
     let!(:artist2) { create :artist, name: "Frank Sinatra" }
     let!(:artist3) { create :artist, name: "Nat King Cole" }

     it "returns artists sorted alphabetically by their names" do
       # note that they should not come out in the order that they were created
       expect(Artist.all.order(:name)).to eq([artist2, artist1, artist3])
     end
   end

end
