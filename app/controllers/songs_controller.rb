class SongsController < ApplicationController
  before_action :get_artist

  def create
    @song = @artist.songs.create(song_params)
    #redirect_to artist_path(@artist)
    respond_to do |format|
      if @song.save
        format.html { redirect_to artists_path, notice: 'Song successfully created' }
        format.json { render :show, status: :created, location: @song }
      else
        format.json { redirect_to artists_path }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
  end

  private
  def song_params
      params.require(:song).permit(:title, :year)
  end

  def get_artist
    @artist = Artist.find(params[:artist_id])
  end

end
