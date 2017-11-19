class SongsController < ApplicationController

  def index
    @songs = Songs.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]

    if @song.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to root_path
  end

  def song_params
    params.require(:song).permit(:title, :album)
  end

end
