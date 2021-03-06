class SongsController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @song = @album.songs.new
    # ^^ done this way to automatically associate the `Song` instance with the
    #  correct `Album` instance
    render :new
  end

  def create
    @album = Album.find(params[:album_id])
    @song = @album.songs.new(song_params)
    if @song.save
      flash[:notice] = "Song successfully created!"
      redirect_to album_path(@album)
    else
      flash[:alert] = "Song was not created. :("
      render :new
    end
  end

  def show
    @album = Album.find(params[:album_id])
    @song = Song.find(params[:id])
    render :show
  end

  def edit
    @album = Album.find(params[:album_id])
    @song = Song.find(params[:id])
    render :edit
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      flash[:notice] = "Song successfully updated!"
      redirect_to album_path(@song.album)
    else
      flash[:alert] = "Song did not update. :("
      @album = Album.find(params[:album_id])
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song successfully deleted!"
    redirect_to album_path(@song.album)
  end

  private
    def song_params
      params.require(:song).permit(:name, :lyrics)
    end
end
