require 'rails_helper'

  feature "Create new song", js:true do
    background do
      visit artist_path(artist)

      fill_in "song_title", with: "Christmas song"
      fill_in "song_year", with: "2000"
      page.execute_script("$('form').submit()")
    end

    given(:artist) { create :artist }

    scenario "add song to showpage" do
      expect(page).to have_content("Christmas song", "2000")
    end

  feature "Delete one song", js: true do
    let(:artist) { create :artist }
    let!(:song1) { create :song , artist: artist, name: "Christmas Artist" }


    scenario "Delete a song" do
      visit artist_path(artist)
      page.find(".delete-song").click
      expect(page).not_to have_content("Christmas Artist")
    end

  feature "Delete all songs", js: true do
      background do
        visit artist_path(artist)
        page.execute_script("$('form').submit()")
      end

      given(:artist) { create :artist }


      scenario 'Remove all songs' do
        expect(artist.songs.count).to eq(0)
      end

end
