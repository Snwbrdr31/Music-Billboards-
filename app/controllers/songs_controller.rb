class SongsController < ApplicationController
  before_action :set_billboard
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = @billboard.songs.new(song_params)
    if @song.save
      redirect_to billboard_path(@billboard)
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private
    def song_params
      params.require(:song).permit(:title, :song_artist, :duration)
    end

    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end

    def set_song
      @song = @billboard.song.find(params[:song_id])
    end

  end
