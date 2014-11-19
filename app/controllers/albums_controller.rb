class AlbumsController < ApplicationController
  # GET /albums
  def index
    @albums = Album.all
  end

  # GET /albums/1
  def show
    @album  = Album.find(params[:id])
    @images = @album.images
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  def create
    @album = Album.new(album_params)
    if @album.save
      if params[:files]
        params[:files].each { |file|
          @album.images.create(file: file)
          }
        end
      redirect_to @album, notice: 'Album was successfully created.'
    else
      render action: "new" 
    end
  end

  # PUT /albums/1
  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      if params[:files]
        params[:files].each { |file|
          @album.images.create(file: file)
        }
        end
      redirect_to @album, notice: 'Album was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /albums/1
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_url
  end

  private

  def album_params
    params.require(:album).permit(:event,
                                    :name,
                                    :files
                                   )
  end
end
