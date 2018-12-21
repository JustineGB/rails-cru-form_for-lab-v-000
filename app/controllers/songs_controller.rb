class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
    
  def new 
    @song = Song.new
  end 
  
  def show 
    @song = Song.find(params[:id])
  end
  
  def create
    @song = Song.create(params.require(:song))
    redirect_to song_path(@song)
  end 
  
  def edit 
    @song = Song.find(params[:id])
  end 
  
  def update
    @song = Song.find(params[:id])
    @songs.update(params.require(:song))
    redirect_to song_path(@song)
  end 
end 
