class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render :index
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    # `save` returns a boolean while `create` returns the created record
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  private

  def album_params
    # an example of "strong parameters", which lets our app know which params can be passed into our methods
    #`params.require(:<name-of-class>).permit(:<name-of-parameters-to-accept-separated-by-commas)`
    params.require(:album).permit(:name, :genre)
  end
end
