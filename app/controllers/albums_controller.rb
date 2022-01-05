class AlbumsController < ApplicationController
  # `ApplicationController` inherits from `ActionController::Base`
  def index
    @albums = Album.all
    render :index
    # @TODO make renders implicit, i.e. remove them
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:notice] = "Album successfully added!"
      redirect_to albums_path # `rake routes` prefix + `_path`
    else
      flash[:alert] = "Album was not created. :("
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
      flash[:notice] = "Album successfully updated!"
      redirect_to albums_path
    else
      flash[:alert] = "Album was not updated. :("
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    flash[:notice] = "Album successfully deleted!"
    redirect_to albums_path
  end

  private
  # any methods written below ^^ are available _only_ inside the class
    def album_params
      params.require(:album).permit(:name, :genre)
    end
end
