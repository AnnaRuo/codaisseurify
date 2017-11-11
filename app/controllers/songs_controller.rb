class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])

  end
  
  def new
    @song = Song.new
  end

end
