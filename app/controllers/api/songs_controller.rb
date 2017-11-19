class Api::SongsController < ApplicationController
  def create
    song = Song.new(song_params)

  if song.save
    render status: 200, json: song
  else
    render status: 422, json: {
      message: "Song could not be created",
      errors: song.errors
    }.to_json
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
      artist: @artist,
    }.to_json
  end

  private

  def song_params
    params.require(:song).permit(:title, :year)
  end
end
