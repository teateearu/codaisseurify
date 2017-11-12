class ArtistsController < ApplicationController

  def index
    @artists = Artist.all

    if params[:order] == 'artists_asc'
      @artists = Artist.all.order(:name)
    end
    
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end

end
