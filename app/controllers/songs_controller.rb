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
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to root_path
  end

  def song_params
    params.require(:song).permit(:title, :album)
  end

end
